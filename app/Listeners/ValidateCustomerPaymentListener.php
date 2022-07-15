<?php

namespace App\Listeners;

use App\CurrentSession;
use App\MpesaPayment;
use App\Project;
use DB;
use Illuminate\Support\Str;

class ValidateCustomerPaymentListener
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

        $project = Project::where('project_no', $payment->billRefNumber)->orWhere('alias', $payment->billRefNumber)->first();
        $current_session = CurrentSession::Current()->first();

        if ($project)
        {
            $expected = $project->balance;

            $payment->project_id = $project->id;
            $payment->is_used    = true;
            $payment->save();

            $balance = $project->expected - ($project->paid + $payment->transAmount);

            $data           = $project;
            $data->paid     = $project->paid + $payment->transAmount;
            $data->balance  = $balance;
            if ($balance === 0) {
            $data->next_due_date     = NULL;
            $data->next_invoice_date = NULL;
            $data->termination_date  = NULL;
            }
            $data->save();

            DB::table('payments')->insert([
                'slug' => Str::uuid()->getHex(),
                'project_id' => $project->id,
                'mpesa_payment_id' => $payment->id,
                'current_session_id' => $current_session->id,
                'ref_no' => $payment->transID,
                'expected' => $expected,
                'paid' => $payment->transAmount,
                'balance' => $balance]);
        }
    }
}
