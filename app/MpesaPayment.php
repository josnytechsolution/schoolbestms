<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MpesaPayment extends Model
{
    protected $fillable = [
        'project_id',
        'current_session_id',
        'transTime',
        'transAmount',
        'businessShortCode',
        'billRefNumber',
        'invoiceNumber',
        'orgAccountBalance',
        'thirdPartyTransID',
        'MSISDN',
        'firstName',
        'lastName',
        'middleName',
        'transID',
        'transactionType',
        'is_used',
    ];

    public function project()
    {
        return $this->belongsTo(Project::class);
    }

    public function current_session()
    {
        return $this->belongsTo(CurrentSession::class);
    }
}
