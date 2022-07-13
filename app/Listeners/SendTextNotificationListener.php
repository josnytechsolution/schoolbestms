<?php

namespace App\Listeners;

use App\MessageOutbox;
use App\MpesaPayment;
use App\Project;
use App\SendConfirmation;
use Illuminate\Support\Str;

class SendTextNotificationListener
{
    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {

        $payment = MpesaPayment::findOrFail($event->payment_id);

        $messageId = Str::uuid()->getHex();
        $uniq = Str::uuid()->getHex();
        $phone = $payment->MSISDN;

        if ($payment->is_used)
        {
            $project = Project::findOrFail($payment->project_id);

            $name = strtoupper($payment->firstName." ".$payment->lastName);
            $amt = number_format($payment->transAmount);
            $balance = number_format($project->balance);


            if($balance < 0) {
                $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST has been received. Your overpay of Ksh {$balance} has been moved to next term. Thank you";
            } else if($balance > 0) {
                $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST has been received. You have underpaid by Ksh {$balance}. Kindly clear the balance. Thank you";
            } else {
                $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST has been received. Thank you";
            }

            $data = new MessageOutbox();
            $data->code         = $uniq;
            $data->client_id    = $project->client_id;
            $data->messageId    = $messageId;
            $data->message      = $message;
            $data->phone        = $phone;
            $data->target       = "mpesa";
            $data->save();
        }
        else
        {
            $name = strtoupper($payment->firstName." ".$payment->lastName);
            $amt = number_format($payment->transAmount);

            $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST MS has been received. But the account number you have entered is invalid. Kindly contact the office 0720871499";

            $data = new MessageOutbox();
            $data->code         = $uniq;
            $data->messageId    = $messageId;
            $data->message      = $message;
            $data->phone        = $phone;
            $data->target       = "mpesa";
            $data->save();
        }

        SendConfirmation::PaymentConfirmation($messageId, $message, $phone);

    }
}
