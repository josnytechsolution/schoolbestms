<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;

class NewCustomerPaymentEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $payment_id;

    /**
     * Create a new event instance.
     *
     * @param $payment_id
     */
    public function __construct($payment_id)
    {
        $this->payment_id = $payment_id;
    }

}
