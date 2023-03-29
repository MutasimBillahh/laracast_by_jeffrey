@component('mail::message')
# Introduction

Thanks for registering us.

@component('mail::button', ['url' => 'https://mailtrap.io/inboxes/1995386/messages/3165330615'])
Button Text
@endcomponent

@component('mail::panel', ['url' => ''])
Lorem ipsummmmmmm lorem lorem lorem  lorem lorem lorem 
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
