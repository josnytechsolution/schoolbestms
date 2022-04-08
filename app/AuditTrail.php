<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AuditTrail extends Model
{
    protected $fillable = ['user_type', 'user_id', 'current_session_id', 'event', 'auditable_type', 'old_values', 'new_values', 'url', 'ip_address', 'user_agent'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
