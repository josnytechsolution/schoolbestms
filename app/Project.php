<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $fillable = [
        'slug',
        'client_id',
        'package_id',
        'current_session_id',
        'project_no',
        'name',
        'reg_date',
        'payment_method',
        'billing_cycle',
        'expected',
        'paid',
        'balance',
        'next_due_date',
        'next_invoice_date',
        'termination_date',
        'is_active',
        'suspend_reason',
        'created_by',
        'updated_by',
    ];

    public function client()
    {
        return $this->belongsTo(Client::class);
    }

    public function package()
    {
        return $this->belongsTo(Package::class);
    }

    public function current_session()
    {
        return $this->belongsTo(CurrentSession::class);
    }
}
