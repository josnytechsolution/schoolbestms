<?php

namespace App\Listeners;

use App\MpesaPayment;
use App\Project;

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

        if ($project)
        {
            $payment->project_id = $project->id;
            $payment->is_used    = true;
            $payment->save();

            $balance = $project->expected - ($project->paid + $payment->transAmount);
            $data           = $project;
            $data->paid     = $project->paid + $payment->transAmount;
            $data->balance  = $balance;

            if ($balance === 0) {
                $data->next_due_date = NULL;
                $data->next_invoice_date = NULL;
                $data->termination_date = NULL;
            }

            $data->save();
        }
    }
}
