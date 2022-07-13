<?php

namespace App\Listeners;

use App\Client;
use App\CurrentSession;
use App\MpesaPayment;
use App\Notifications\InvoicePaid;
use App\Project;

class SendReceiptViaMailListener
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

        if ($payment->is_used) {
            $project = Project::findOrFail($payment->project_id);

            $client = Client::findOrFail($project->client_id);
            $current_session = CurrentSession::Current()->first();

            $clientName     = $client->fullname;
            $amount         = number_format($payment->transAmount,2);
            $company        = $client->company_name;
            $currentSession = $current_session->name;
            $code           = $payment->transID;
            $pay_date       = date('d-m-Y', strtotime($payment->transTime));
            $balance        = number_format($project->balance,2);

            $client->notify(new InvoicePaid($currentSession, $amount, $clientName, $company, $code, $pay_date, $balance));
        }
    }
}
