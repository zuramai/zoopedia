@extends('layouts.sidebar')
@section('pageTitle','Kontak Admin')
@section('content')


<section class="section">
          <div class="section-header">
            <h1>Kontak Admin</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item">Contact</div>
            </div>
          </div>
          <div class="section-body">
            <h2 class="section-title">Informasi</h2>
            <p class="section-lead">
              Anda dapat menghubungi admin untuk mendaftar, isi saldo, atau bertanya sesuatu.
            </p>

            <div class="row mt-sm-4">
            	@foreach($staff as $data)
              <div class="col-12 col-md-4">
                <div class="card profile-widget">
                  <div class="profile-widget-header d-flex justify-content-center">                     
                    <img alt="image" src="{{asset('img/staff/'.$data->picture)}}" class="rounded-circle profile-widget-picture image-contact">
                  </div>
                  <div class="profile-widget-description">
                    <div class="profile-widget-name text-center">{{$data->name}} <div class="text-muted d-inline font-weight-normal"><div class="slash"></div> {{$data->level}}</div></div>
                    <b>Nomor telepon:</b> {{ $data->phone }} <br>
                    <b>Email:</b> {{ $data->email }} <br>
                    <b>Facebook:</b> <a href="{{ $data->facebook_url }}">{{ $data->facebook_name }}</a> <br>
                  </div>
                </div>
              </div>
              @endforeach
            </div>
          </div>
        </section>


@endsection