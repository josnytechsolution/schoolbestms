<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MessageOutbox extends Model
{
    protected $fillable = [
        'code',
        'externalMessageId',
        'messageId',
        'message',
        'phone',
        'statusCode',
        'status',
        'delivered_at',
    ];
}
