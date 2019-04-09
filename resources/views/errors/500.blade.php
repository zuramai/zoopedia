@extends('layouts.errors')
@section('pageTitle','403')
@section('content')

      <div class="container mt-5">
        <div class="page-error">
          <div class="page-inner">
            <h1>500</h1>
            <div class="page-description">
              Whoopps, something went wrong.
            </div>
         
              
          <div class="mt-3">
            <a href="index.html">Back to Home</a>
          </div>
         
          </div>
        </div>
        <div class="simple-footer mt-5">
          Copyright &copy; {{ env('APP_NAME') }} {{ date('Y') }}
        </div>
      </div>
@endsection