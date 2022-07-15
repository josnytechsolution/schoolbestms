<?php

namespace App\Listeners;

use App\Client;
use App\CompanyProfile;
use App\CurrentSession;
use App\MpesaPayment;
use App\Notifications\InvoicePaid;
use App\Payment;
use App\Project;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use PDF;

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
        $mpesaPayment = MpesaPayment::findOrFail($event->payment_id);

        if ($mpesaPayment->is_used) {
            $project = Project::findOrFail($mpesaPayment->project_id);

            $client = Client::findOrFail($project->client_id);
            $current_session = CurrentSession::Current()->first();

            $profile = CompanyProfile::findOrFail(1);

            $payment = Payment::findOrFail($mpesaPayment->payment->id);

            $pdf = PDF::loadView('export-pdf.payment_receipt_pdf', compact( 'payment', 'current_session', 'profile', 'project'))
                ->setPaper('a4', 'portrait')
                ->setWarnings(false)
                ->setOptions(['defaultFont' => 'Courier New', 'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true]);

            $url = "public/receipts/schoolbest-".$payment->ref_no."-receipt.pdf";

            Storage::put($url, $pdf->output());

            $payment->receipt = "storage/receipts/schoolbest-".$payment->ref_no."-receipt.pdf";
            $payment->save();

            $receipt = $payment->receipt;
            $name = "schoolbest-".$payment->ref_no."-receipt.pdf";
            $clientName     = $client->fullname;
            $amount         = number_format($mpesaPayment->transAmount,2);
            $company        = $client->company_name;
            $currentSession = $current_session->name;
            $code           = $mpesaPayment->transID;
            $pay_date       = date('d-m-Y', strtotime($mpesaPayment->transTime));
            $balance        = number_format($project->balance,2);
            $invoice        = $mpesaPayment->payment->slug;

            $client->notify(new InvoicePaid($currentSession, $amount, $clientName, $company, $code, $pay_date, $balance, $invoice, $receipt, $name));
        }
    }
}
