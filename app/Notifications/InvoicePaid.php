<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class InvoicePaid extends Notification
{
    use Queueable;
    private $currentSession;
    private $amount;
    private $clientName;
    private $company;


    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($currentSession, $amount, $clientName, $company)
    {
        $this->currentSession = $currentSession;
        $this->amount = $amount;
        $this->clientName = $clientName;
        $this->company = $company;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        $url = url('http://dev.schoolbestms/schoolbest-projects/6ad40968fbca439bb950d60892592f57');
        return (new MailMessage)
                    ->subject('Payment Confirmation')
                    ->greeting('Dear ' .$this->clientName.' ('.$this->company.')')
                    ->line('This is a payment receipt for SCHOOLBEST - '.$this->currentSession)
                    ->action('You can view and download your receipt here', $url)
                    ->line('Thank you for using our services!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
