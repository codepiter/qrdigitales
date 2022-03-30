@component('mail::message')


   Hola, me llamo {{ $mailData['name'] }} puede contactarme a través del siguiente correo: {{ $mailData['email'] }}  y el asunto que me hace escribirle el dia de hoy es el siguiente:<br><br>
   {{ $mailData['message'] }}



Gracias,<br>
{{ config('app.name') }}
@endcomponent