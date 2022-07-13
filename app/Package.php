<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    protected $fillable = [
        'slug',
        'name',
        'description',
        'monthly',
        'termly',
        'annually',
        'max_students',
        'specification',
        'created_by',
        'updated_by',
    ];

    public function projects()
    {
        return $this->hasMany(Project::class);
    }
}
