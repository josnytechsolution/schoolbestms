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
    private $code;
    private $pay_date;
    private $balance;


    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($currentSession, $amount, $clientName, $company, $code, $pay_date, $balance)
    {
        $this->currentSession = $currentSession;
        $this->amount = $amount;
        $this->clientName = $clientName;
        $this->company = $company;
        $this->code = $code;
        $this->pay_date = $pay_date;
        $this->balance = $balance;

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
     * @return MailMessage
     */
    public function toMail($notifiable)
    {
        $url = url('http://dev.schoolbestms/schoolbest-projects/6ad40968fbca439bb950d60892592f57');
        return (new MailMessage)
                    ->subject('Your Payment Receipt')
                    ->greeting('Dear ' .$this->clientName.' ('.$this->company.')')
                    ->line('This is a payment receipt for SCHOOLBEST MS - '.$this->currentSession)
                    ->line('Your Payment method is: Lipa Na Mpesa')
                    ->line('Amount Paid: Ksh. ' .$this->amount)
                    ->line('Balance: Ksh. ' .$this->balance)
                    ->line('Reference: ' .$this->code)
                    ->line('Paid On: ' .$this->pay_date)
                    ->line('Your package subscription has been automatically renewed for another academic term.')
                    //->action('You can view and download your receipt here', $url)
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
