<?php


namespace App;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class SendConfirmation
{
    /**
     * @param $messageId
     * @param $message
     * @param $phone
     */
    public static function PaymentConfirmation($messageId, $message, $phone)
    {
        $redirect = config('default.sms.url');
        $projectId = config('default.sms.projectId');

        $access_token = GenerateToken::generateClientToken();

        $ch = curl_init();

        curl_setopt_array($ch, array(
            CURLOPT_URL => 'https://account.josnytechsolution.net/v1/projects/sms/simple/send',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>'{
                "recipient": "'.$phone.'",
                "message": "'.$message.'",
                "messageId": "'.$messageId.'",
                "callback": "'.$redirect.'",
                "projectId": "'.$projectId.'"
            }',
            CURLOPT_HTTPHEADER => array(
                'Accept: application/json',
                'Content-Type: application/json',
                'Authorization:Bearer '.$access_token
            ),
        ));

        curl_exec($ch);

        curl_close($ch);
    }

    public function sendBulkSMS($recipient, $message, $messageId, $recipient2, $message2, $messageId2)
    {

        $ch = curl_init();

        curl_setopt_array($ch, array(
            CURLOPT_URL => 'https://api.emalify.com/v1/projects/'.$appId.'/sms/bulk',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>'{
                "messages" : [
                    {
                        "recipient": "'.$recipient.'",
                        "message": "'.$message.'",
                        "messageId": "'.$messageId.'"
                    },
                    {
                        "recipient": "'.$recipient2.'",
                        "message": "'.$message2.'",
                        "messageId": "'.$messageId2.'"
                    }
                ],
                "from": "josnytechsn"
            }',
            CURLOPT_HTTPHEADER => array(
                'Accept: application/json',
                'Content-Type: application/json',
                'Authorization:Bearer '.$access_token
            ),
        ));

        curl_exec($ch);

        curl_close($ch);

    }
}