<!doctype html>
<html lang="en">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- plugins:css -->
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/mdi/css/materialdesignicons.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/vendors/css/vendor.bundle.base.css') }}">
<!-- Layout styles -->
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}">
<!-- End layout styles -->
<link rel="shortcut icon" href="{{ asset('assets/image/favicon.ico') }}" />
<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<!-- MDB CSS -->
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/bootstrap.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/mdb.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/datatables.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/datatables2.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/datatables-select.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/datatables-select2.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/directives.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/flag.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/jquery.zmd.hierarchical-display.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/addons/rating.min.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('assets/mdb/css/modules/animations-extended.min.css') }}">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">

<title>{{config('app.name')}}</title>
</head>

<body>

  @yield('contents')

  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="{{ asset('assets/vendors/js/vendor.bundle.base.js') }}"></script>
  <!-- endinject -->

  <!-- inject:js -->
  <script src="{{ asset('assets/js/off-canvas.js') }}"></script>
  <script src="{{ asset('assets/js/hoverable-collapse.js') }}"></script>
  <script src="{{ asset('assets/js/misc.js') }}"></script>
  <!-- endinject -->
  <!-- container-scroller -->

  <!-- Plugin js for this page -->
  <script src="{{ asset('assets/vendors/chart.js/Chart.min.js') }}"></script>
  <script src="{{ asset('assets/js/jquery.cookie.js') }}" type="text/javascript"></script>
  <!-- End plugin js for this page -->
  <!-- Custom js for this page -->
  <script src="{{ asset('assets/js/dashboard.js') }}"></script>
  <script src="{{ asset('assets/js/todolist.js') }}"></script>
  <!-- End custom js for this page -->

  <!-- MDB -->
  @stack('scripts')
  <script type="text/javascript" src="{{ asset('assets/mdb/js/bootstrap.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/mdb/js/jquery.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/mdb/js/mdb.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/mdb/js/popper.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/mdb/js/addons/datatables.min.js') }}"></script>
  <script type="text/javascript" src="{{ asset('assets/mdb/js/modules/animations-extended.min.js') }}"></script>


</body>

</html>