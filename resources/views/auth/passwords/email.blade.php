@extends('layouts.auth')

@section('content')
@section('app_title','Reset - '.env('APP_NAME'))
<div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
            <div class="login-brand">
              <img src="assets/img/stisla-fill.svg" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>Reset Password</h4></div>
              @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
              <div class="card-body">
                <p class="text-muted">We will send a link to reset your password</p>
                 <form method="POST" action="{{ route('password.email') }}">
                        @csrf
                        <div class="form-group ">
                            <label for="email" class=" ">{{ __('E-Mail Address') }}</label>

                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                        </div>
                        <div class="float-right">
                            <button type="submit" class="btn btn-primary">
                                {{ __('Send Password Reset Link') }}
                            </button>
                        </div>
                        <div class="clearfix mb-2"></div>
                    </form>
              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; {{ env('APP_NAME') }} {{ date('Y') }}
            </div>
          </div>
        </div>
      </div>
@endsection
