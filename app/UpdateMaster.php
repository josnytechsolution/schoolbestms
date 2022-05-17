<?php


namespace App;


class UpdateMaster
{
    /**
     * @param $projectNo
     * @return mixed
     */
    public static function updateProject($projectNo)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://account.josnytechsolution.net/v1/update-project-callback-url',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => '{
               "projectNo" : "'.$projectNo.'",
               "application" : "SchoolBEST",
               "url" : "https://account.schoolbest.net/v1/payment-callback-confirmation-url"
               }',
            CURLOPT_HTTPHEADER => array(
                'Accept: application/json',
                'Content-Type: application/json'
            ),
        ));

        curl_exec($curl);

        curl_close($curl);
    }
}