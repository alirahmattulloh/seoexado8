@extends('layouts.main')

@section('contents')

<div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
      <a class="navbar-brand brand-logo" href="{{ ('/timseo/dashboard') }}"><img src="{{ asset('assets/image/logo-exado-4.svg') }}" alt="logo" /></a>
      <a class="navbar-brand brand-logo-mini" href="{{ ('/timseo/dashboard') }}"><img src="{{ asset('assets/image/logo-exado-4-mini.svg') }}" alt="logo" /></a>
    </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                <!--<div class="nav-profile-img">
                  <img src="{{ asset('assets/image/faces/face1.jpg') }}" alt="image">
                  <span class="availability-status online"></span>
                </div>-->
                <div class="nav-profile-text">
                  <p class="mb-1 text-black">{{{ isset(Auth::user()->nama) ? Auth::user()->nama : Auth::user()->nama }}}</p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <!--<a class="dropdown-item" href="#">
                  <i class="mdi mdi-cached me-2 text-success"></i> Update Profile </a>
                <div class="dropdown-divider"></div>-->
                <a class="dropdown-item" href="{{ route('logout') }}">
                  <i class="mdi mdi-logout me-2 text-primary"></i> Signout </a>
              </div>
            </li>
            <li class="nav-item d-none d-lg-block full-screen-link">
              <a class="nav-link">
                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
              </a>
            </li>
            <li class="nav-item nav-logout d-none d-lg-block">
              <a class="nav-link" href="#">
                <i class="mdi mdi-power"></i>
              </a>
            </li>
            <li class="nav-item nav-settings d-none d-lg-block">
              <a class="nav-link" href="#">
                <i class="mdi mdi-format-line-spacing"></i>
              </a>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <!--<div class="nav-profile-image">
                  <img src="{{ asset('assets/image/faces/face1.jpg') }}" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed
                </div>-->
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">{{{ isset(Auth::user()->username) ? Auth::user()->username : Auth::user()->username }}}</span>
                  <!--<span class="text-secondary text-small">{{{ isset(Auth::user()->role_id) ? Auth::user()->role_id : Auth::user()->role_id }}}</span>-->
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ ('/timseo/dashboard') }}">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{ ('/timseo/datacust') }}">
                <span class="menu-title">Data pelanggan</span>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>
            </li>
          </ul>
        </nav>
        <div class="main-panel">
            <div class="content-wrapper">

            @yield('menu')

            </div>
        </div>

        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
@endsection
