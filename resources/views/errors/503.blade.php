@extends('layouts.errors')
@section('pageTitle','403')
@section('content')

      <div class="container mt-5">
        <div class="page-error">
          <div class="page-inner">
            <h1>503</h1>
            <div class="page-description">
            	Be right back.
            </div>
          </div>
        </div>
        <div class="simple-footer mt-5">
          Copyright &copy; {{ env('APP_NAME') }} {{ date('Y') }}
        </div>
      </div>
@endsection