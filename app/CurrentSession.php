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
}
