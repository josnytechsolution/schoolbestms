<?php

namespace App\Http\Controllers\Api\V1;

use App\CurrentSession;
use App\Events\NewCustomerPaymentEvent;
use App\MpesaPayment;
use App\Http\Controllers\Controller;

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

        $current_session = CurrentSession::Current()->first();

        $payment = new MpesaPayment();
        $payment->current_session_id= $current_session->id;
        $payment->transTime         = $callbackData->TransTime;
        $payment->transAmount       = $callbackData->TransAmount;
        $payment->businessShortCode = $callbackData->BusinessShortCode;
        $payment->billRefNumber     = strtoupper(str_replace(' ', '', $callbackData->BillRefNumber));
        $payment->invoiceNumber     = $callbackData->InvoiceNumber;
        $payment->orgAccountBalance = $callbackData->OrgAccountBalance;
        $payment->thirdPartyTransID = $callbackData->ThirdPartyTransID;
        $payment->MSISDN            = $callbackData->MSISDN;
        $payment->firstName         = $callbackData->FirstName;
        $payment->lastName          = $callbackData->LastName;
        $payment->middleName        = $callbackData->MiddleName;
        $payment->transID           = $callbackData->TransID;
        $payment->transactionType   = $callbackData->TransactionType;
        $payment->save();

        $payment_id = $payment->id;
        //Send to event
        event(new NewCustomerPaymentEvent($payment_id));


    }

}
