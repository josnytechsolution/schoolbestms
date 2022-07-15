<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    protected $fillable = [
        'slug',
        'project_id',
        'mpesa_payment_id',
        'current_session_id',
        'ref_no',
        'expected',
        'paid',
        'balance',
    ];

    public function project()
    {
        return $this->belongsTo(Payment::class);
    }

    public function mpesa_payment()
    {
        return $this->belongsTo(MpesaPayment::class);
    }

    public function current_session()
    {
        return $this->belongsTo(CurrentSession::class);
    }
}
