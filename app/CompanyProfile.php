<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CompanyProfile extends Model
{
    protected $fillable = [
        'name',
        'motto',
        'postal',
        'physical',
        'contact1',
        'contact2',
        'email1',
        'email2',
        'website',
        'logo',
        'created_by',
        'created_at',
        'updated_by',
        'updated_at',
    ];
}
