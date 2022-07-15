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
    private $invoice;
    private $receipt;
    private $name;


    /**
     * Create a new notification instance.
     *
     * @param $currentSession
     * @param $amount
     * @param $clientName
     * @param $company
     * @param $code
     * @param $pay_date
     * @param $balance
     * @param $invoice
     * @param $receipt
     * @param $name
     */
    public function __construct($currentSession, $amount, $clientName, $company, $code, $pay_date, $balance, $invoice, $receipt, $name)
    {
        $this->currentSession = $currentSession;
        $this->amount = $amount;
        $this->clientName = $clientName;
        $this->company = $company;
        $this->code = $code;
        $this->pay_date = $pay_date;
        $this->balance = $balance;
        $this->invoice = $invoice;
        $this->receipt = $receipt;
        $this->name = $name;

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
        $url = url('http://dev.schoolbestms/v1/client-payments?receipt='.$this->invoice);
        return (new MailMessage)
                    ->from('bill@schoolbest.co.ke', 'SCHOOLBEST MS')
                    ->subject('Your Payment Receipt')
                    ->greeting('Dear ' .$this->clientName.' ('.$this->company.')')
                    ->line('This is a payment receipt for SCHOOLBEST MS - '.$this->currentSession)
                    ->line('Your Payment method is: Lipa Na Mpesa')
                    ->line('Amount Paid: Ksh. ' .$this->amount)
                    ->line('Balance: Ksh. ' .$this->balance)
                    ->line('Reference: ' .$this->code)
                    ->line('Paid On: ' .$this->pay_date)
                    ->line('Your package subscription has been automatically renewed for another academic term.')
                    ->action('You can view and download your receipt here', $url)
                    ->line('Thank you for using our services!')
                    ->attach(asset($this->receipt), [
                        'as' => $this->name,
                        'mime' => 'application/pdf',
                    ]);
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
