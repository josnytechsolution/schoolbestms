<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CurrentSession extends Model
{
    protected $fillable = [
        'slug',
        'name',
        'term',
        'year',
        'status',
        'created_by',
        'updated_by'
    ];

    public function scopeCurrent($query)
    {
        return $query->where('status', 'Active');
    }

    public function audit_trails()
    {
        return $this->hasMany(AuditTrail::class);
    }

    public function clients()
    {
        return $this->hasMany(Client::class);
    }

    public function projects()
    {
        return $this->hasMany(Project::class);
    }

    public function mpesa_payments()
    {
        return $this->hasMany(MpesaPayment::class);
    }
}
