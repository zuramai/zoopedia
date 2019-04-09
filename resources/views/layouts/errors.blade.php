<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>@yield('pageTitle') {{ env('APP_NAME') }}</title>

  <!-- General CSS Files -->
  <link rel="stylesheet" href="{{asset('/modules/bootstrap/css/bootstrap.min.css')}}">
  <link rel="stylesheet" href="{{asset('/modules/fontawesome/css/all.min.css')}}">

  <!-- CSS Libraries -->

  <!-- Template CSS -->
  <link rel="stylesheet" href="{{asset('/css/style.css')}}">
  <link rel="stylesheet" href="{{asset('/css/components.css')}}">
</head>
<body>
  <div id="app">
    <section class="section">
      @yield('content')
    </section>
  </div>

  <!-- General JS Scripts -->
  <script src="{{asset('/modules/jquery.min.js')}}"></script>
  <script src="{{asset('/modules/popper.js')}}"></script>
  <script src="{{asset('/modules/tooltip.js')}}"></script>
  <script src="{{asset('/modules/bootstrap/js/bootstrap.min.js')}}"></script>
  <script src="{{asset('/modules/nicescroll/jquery.nicescroll.min.js')}}"></script>
  <script src="{{asset('/modules/moment.min.js')}}"></script>
  <script src="{{asset('/js/stisla.js')}}"></script>
  
  <!-- JS Libraies -->

  <!-- Page Specific JS File -->
  
  <!-- Template JS File -->
  <script src="{{asset('/js/scripts.js')}}"></script>
  <script src="{{asset('/js/custom.js')}}"></script>
</body>
</html>

