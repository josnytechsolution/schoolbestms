<?php

namespace App\Http\Controllers\Api\V1;

use App\Client;
use App\CurrentSession;
use App\MessageOutbox;
use App\MpesaPayment;
use App\Notifications\InvoicePaid;
use App\Project;
use App\SendConfirmation;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

class PaymentTransactionController extends Controller
{
    /**
     * Use this function to process the C2B Confirmation result callback
     * @return string
     */
    public static function processC2BRequestConfirmation()
    {
        $callbackJSONData = file_get_contents('php://input');
        $callbackData = json_decode($callbackJSONData);

        $logFile = "PaymentConfirmationResponse.json";
        $log = fopen($logFile, "a");
        fwrite($log, $callbackJSONData);
        fclose($log);

        $transactionType    = $callbackData->TransactionType;
        $transID            = $callbackData->TransID;
        $transTime          = $callbackData->TransTime;
        $transAmount        = $callbackData->TransAmount;
        $businessShortCode  = $callbackData->BusinessShortCode;
        $billRefNumber      = strtoupper(str_replace(' ', '', $callbackData->BillRefNumber));
        $invoiceNumber      = $callbackData->InvoiceNumber;
        $orgAccountBalance  = $callbackData->OrgAccountBalance;
        $thirdPartyTransID  = $callbackData->ThirdPartyTransID;
        $MSISDN             = $callbackData->MSISDN;
        $firstName          = $callbackData->FirstName;
        $middleName         = $callbackData->MiddleName;
        $lastName           = $callbackData->LastName;

        $project = Project::where('project_no', $billRefNumber)->orWhere('alias', $billRefNumber)->first();
        $current_session = CurrentSession::Current()->first();

        if ($project)
        {
            $result = new MpesaPayment();
            $result->project_id        = $project->id;
            $result->current_session_id= $current_session->id;
            $result->transTime         = $transTime;
            $result->transAmount       = $transAmount;
            $result->businessShortCode = $businessShortCode;
            $result->billRefNumber     = $billRefNumber;
            $result->invoiceNumber     = $invoiceNumber;
            $result->orgAccountBalance = $orgAccountBalance;
            $result->thirdPartyTransID = $thirdPartyTransID;
            $result->MSISDN            = $MSISDN;
            $result->firstName         = $firstName;
            $result->lastName          = $lastName;
            $result->middleName        = $middleName;
            $result->transID           = $transID;
            $result->transactionType   = $transactionType;
            $result->is_used           = 1;
            $result->save();

            $total_paid = $project->paid + $transAmount;
            $balance = $project->expected - $total_paid;

            $data = $project;
            $data->paid = $total_paid;
            $data->balance = $balance;
            $data->save();

            $name = strtoupper($result->firstName." ".$result->lastName);
            $amt = number_format($transAmount);
            $bal = number_format($data->balance);


            if($balance < 0) {
                $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST has been received. Your overpay of Ksh {$bal} has been moved to next term. Thank you";
            } else if($balance > 0) {
                $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST has been received. You have underpaid by Ksh {$bal}. Kindly clear the balance. Thank you";
            } else {
                $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST has been received. Thank you";
            }

            $messageId = Str::uuid()->getHex();
            $uniq = Str::uuid()->getHex();
            $phone = $MSISDN;

            $data = new MessageOutbox();
            $data->code         = $uniq;
            $data->client_id    = $project->client_id;
            $data->messageId    = $messageId;
            $data->message      = $message;
            $data->phone        = $phone;
            $data->target       = "mpesa";
            $data->save();

            SendConfirmation::PaymentConfirmation($messageId, $message, $phone);

            $client = Client::findOrFail($project->client_id);

            $clientName = $client->fullname;
            $amount = $transAmount;
            $company = $client->company_name;
            $currentSession = $current_session->name;

            $client->notify(new InvoicePaid($currentSession, $amount, $clientName, $company));
        }
        else
        {
            $result = new MpesaPayment();
            $result->project_id        = NULL;
            $result->current_session_id= $current_session->id;
            $result->transTime         = $transTime;
            $result->transAmount       = $transAmount;
            $result->businessShortCode = $businessShortCode;
            $result->billRefNumber     = $billRefNumber;
            $result->invoiceNumber     = $invoiceNumber;
            $result->orgAccountBalance = $orgAccountBalance;
            $result->thirdPartyTransID = $thirdPartyTransID;
            $result->MSISDN            = $MSISDN;
            $result->firstName         = $firstName;
            $result->lastName          = $lastName;
            $result->middleName        = $middleName;
            $result->transID           = $transID;
            $result->transactionType   = $transactionType;
            $result->is_used           = 0;
            $result->save();

            $name = strtoupper($result->firstName." ".$result->lastName);
            $amt = number_format($transAmount);

            $message = "Dear {$name}, Your payment of Ksh {$amt} for SCHOOLBEST has been received. But the account number you have entered is invalid. Kindly contact the office 0720871499";

            $messageId = Str::uuid()->getHex();
            $uniq = Str::uuid()->getHex();
            $phone = $MSISDN;

            $data = new MessageOutbox();
            $data->code         = $uniq;
            $data->client_id    = $project->client_id;
            $data->messageId    = $messageId;
            $data->message      = $message;
            $data->phone        = $phone;
            $data->target       = "mpesa";
            $data->save();

            SendConfirmation::PaymentConfirmation($messageId, $message, $phone);
        }

    }
}
