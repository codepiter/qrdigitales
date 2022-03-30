<!DOCTYPE html>
<html lang="{{ $restorant->language }}" id="nodeToRenderAsPDF">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Menu Qr</title>


  <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
		
		
<link rel="shortcat icon" href="{{ asset('img/logo.png') }}">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<!-- MS, fb & Whatsapp -->
<!-- MS Tile - for Microsoft apps-->
<meta name="msapplication-TileImage" content="http://">
<!-- fb & Whatsapp -->

<!-- Site Name, Title, and Description to be displayed -->
<meta property="og:site_name" content="The Menu QR">
<meta property="og:title" content="{{ $restorant->name }}">


<!-- Image to display -->
<!-- Replace   «example.com/image01.jpg» with your own -->
<meta property="og:image" content="{{ asset('storage'). '/'.$restorant->logo}}">

<!-- No need to change anything here -->
<meta property="og:type" content="website" />
<meta property="og:image:type" content="image/jpeg">

<!-- Size of image. Any size up to 300. Anything above 300px will not work in WhatsApp -->
<meta property="og:image:width" content="300">
<meta property="og:image:height" content="300">

<!-- Website to visit when clicked in fb or WhatsApp-->
<meta property="og:url" content="http://">

<meta property='og:locale' content='ar_AR' />



</head>
<body>

    @yield('main')
    @yield('scripts')


	<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
     <!-- Google Map -->
	 
	 <script
      src="https://maps.googleapis.com/maps/api/js?key=<?php echo config('settings.google_maps_api_key'); ?>&callback=initMap&libraries=&v=weekly"
      async
    ></script>
	
	
</body>
</html>