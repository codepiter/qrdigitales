@extends('layouts.front', ['class' => ''])

@section('content')
   <section class="section">
    <div class="container">
        <br /><br />
        <div class="alert alert-danger" role="alert">
            Install is ok. But looks like you are running the site under subdomain. 
        </div>
        <p>
            When you run the site in subdomain, you need to declare that subdomain in Site setting->Setup->Subdomains and add your domain there<br />
        <br />
        <a href="#" type="button" class="btn btn-success">Read more here</a>
        </p>
    </div>
   </section>
@endsection