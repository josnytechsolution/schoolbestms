<?php

namespace App\Http\Controllers\Api\V1;

use App\CompanyProfile;
use App\CurrentSession;
use App\Payment;
use App\Project;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use PDF;

class ClientQueryController extends Controller
{
    public function queryReceipt(Request $request)
    {
        $payment = Payment::where('slug', $request->receipt)->first();

        $profile = CompanyProfile::findOrFail(1);

        $current_session = CurrentSession::findOrFail($payment->current_session_id);
        $project = Project::findOrFail($payment->project_id);

        $pdf = PDF::loadView('export-pdf.payment_receipt_pdf', compact( 'payment', 'current_session', 'profile', 'project'))
            ->setPaper('a4', 'portrait')
            ->setWarnings(false)
            ->setOptions(['defaultFont' => 'Courier New', 'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true]);

        return $pdf->stream('schoolbest-receipt-for-'.$current_session->name.'.pdf');
    }
}
