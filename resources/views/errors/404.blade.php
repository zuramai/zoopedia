@extends('layouts.errors')
@section('pageTitle','404')
@section('content')
<div class="container mt-5">
        <div class="page-error">
          <div class="page-inner">
            <h1>404</h1>
            <div class="page-description">
              The page you were looking for could not be found.
            </div>
            
              <div class="mt-3">
                <a href="{{ url('/') }}">Back to Home</a>
              </div>
            </div>
          </div>
        </div>
        <div class="simple-footer mt-5">
          Copyright &copy; {{ env('APP_NAME') }} {{ date('Y') }}
        </div>
      </div>
@endsection