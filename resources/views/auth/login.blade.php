
@extends('layouts.main')

@section('contents')
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <img src="{{ asset('assets/image/logo-exado-4.svg') }}">
                </div>
                <h4>Hello team!!</h4>
                <h6 class="font-weight-light">Sign in to continue.</h6>
                <form method="post" action="/" class="pt-3">
                @csrf
                  <div class="form-group">
                    <input type="text" name="username" class="form-control form-control-lg form-control @error('username') is-invalid @enderror" id="username" placeholder="Username">
                  </div>
                  @error('username')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                  @enderror
                  <div class="form-group">
                    <input type="password" name="password" class="form-control form-control-lg form-control @error('password') is-invalid @enderror" id="password" placeholder="Password">
                  </div>
                  @error('password')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                  @enderror
                  <div class="mt-3">
                    <button type="submit" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn">SIGN IN</button>
                  </div>
                </form>

                @if (session()->has('error'))
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ session('error') }}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
  </body>
</html>
@endsection