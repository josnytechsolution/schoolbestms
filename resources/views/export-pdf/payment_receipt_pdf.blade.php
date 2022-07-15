<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Payment Receipt</title>
    <style>
        @page{
            margin: 30px 30px 50px 20px;
            page-break-after: always;
        }
        html {
            font-family: "Arial Narrow", monospace;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            font-size: 14px;
        }

        td, th {
            border: 1px solid #1a252f;
            text-align: left;
            padding: 4px 8px 4px 8px;
            vertical-align: middle;
        }
    </style>
    <!-- Styles -->
</head>
<body>

<table>
    <tr style="padding-bottom: 20px">
        <td style="width: 120px;padding: 4px;border:none">
            <img src="{{ asset($profile->logo) }}" height="100px" alt="Logo" style="margin-left: 10px">
        </td>
        <td style="border: none;text-align: right">
            <span style="font-size: 28px;font-weight: bold">{{ strtoupper($profile->name) }}</span><br>
            <span style="font-size: 18px;">{{ strtoupper($profile->postal) }}</span><br>
            <span style="font-size: 18px;">Tel: {{ strtoupper($profile->contact1.", ".$profile->contact2) }}</span><br>
            <span style="font-size: 18px;">Email: {{ $profile->email1 }}</span><br>
            <span style="font-size: 18px;">Website: {{ $profile->website }}</span><br>
        </td>
    </tr>
</table>

<table style="border-bottom: 5px solid #3498db;margin-top: 5px"></table>

<h3 style="margin-top: 30px">Receipt To:</h3>
<table style="border: none;margin-bottom: 10px">
    <tr><td style="border: none">{{ ucwords(strtolower($project->client->company_name)) }}</td></tr>
    <tr><td style="border: none">ATTN: {{ ucwords(strtolower($project->client->fullname)) }}</td></tr>
    <tr><td style="border: none">{{ $project->client->postal_address }}</td></tr>
    <tr><td style="border: none">Email: {{ $project->client->email }}</td></tr>
    <tr><td style="border: none">Tel: {{ $project->client->contact }}</td></tr>
</table>


<table style="margin-top: 20px;border: none">
    <tr style="background-color: #3498db;color: #fff">
        <th style="border: none;">DESCRIPTION</th>
        <th style="text-align: right;border: none;">AMOUNT(KES)</th>
    </tr>

    <tr>
        <td style="border: none;height: 50px;">SchoolBEST {{ ucwords(strtolower($project->package->name)) }} Package - {{ $project->site }} ({{ $current_session->name }})</td>
        <td style="text-align: right;border: none;height: 50px;">{{ number_format($payment->paid,2) }}</td>
    </tr>

    <tr style="border-top: 2px solid #3498db">
        <td style="text-align: right;border: none;height: 20px"><b>Subtotal:</b></td>
        <td style="text-align: right;border: none;height: 20px"> <b>{{ number_format($payment->paid,2) }}</b></td>
    </tr>

    <tr>
        <td style="text-align: right;border: none;height: 20px"><b>Expected:</b></td>
        <td style="text-align: right;border: none;height: 20px"><b>{{ number_format($payment->expected,2) }}</b></td>
    </tr>
    <tr>
        <td style="text-align: right;background-color: #3498db;border: none;color: #fff;height: 30px"><b>Total @if($payment->balance < 0) Overpay: @else Due: @endif</b></td>
        <td style="text-align: right;background-color: #3498db;border: none;color: #fff;"><b>{{ number_format($payment->balance,2) }}</b></td>
    </tr>
</table>

<h3 style="margin-top: 30px"><u>Transaction Details:</u></h3>

<table style="margin-top: 10px;">
    <tr style="background-color: #3498db;color: #fff;">
        <th style="border: none;text-align: center">Transaction Date</th>
        <th style="border: none;text-align: center">Gateway</th>
        <th style="border: none;text-align: center">Transaction ID</th>
        <th style="text-align: right;border: none">AMOUNT (KES)</th>
    </tr>

    <tr style="padding-bottom: 3px;padding-top: 3px;border-bottom: 2px solid #3498db">
        <td style="border: none;text-align: center">{{ date('d/m/Y', strtotime($payment->mpesa_payment->transTime)) }}</td>
        <td style="border: none;text-align: center">{{ __("Lipa Na Mpesa") }}</td>
        <td style="border: none;text-align: center">{{ strtoupper($payment->ref_no) }}</td>
        <td style="text-align: right;border: none;">KES. {{ number_format($payment->paid,2) }}</td>
    </tr>
</table>

<p style="text-align: center;margin-top: 50px"><strong>{{ $profile->motto }}</strong></p>
</body>
</html>