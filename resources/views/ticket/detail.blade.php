@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Tiket</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item"><a href="{{ url('/') }}">Dashboard</a></div>
              <div class="breadcrumb-item">Tiket</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Tiket Saya</span></h4>
		              </div>
		             
		              <div class="card-body">
		              	@if(session('success'))
	                        <div class="alert alert-primary" role="alert">
	                            <i class="fa fa-check-circle"></i> {!! session('success') !!}
	                        </div>
		              	@elseif(session('danger'))
	                        <div class="alert alert-danger" role="alert">
	                            <i class="fa fa-exclamation-circle"></i> {{ session('danger') }}
	                        </div>
	                    @endif
	                    @if ($errors->has('quantity'))
		                    	<div class="alert alert-danger" role="alert">
		                            <i class="fa fa-exclamation-circle"></i> {{ $errors->first('quantity') }}
		                        </div>
						@endif
						
						
						        <a href="#" class="btn btn-primary btn-icon icon-left btn-lg btn-block mb-4 d-md-none" data-toggle-slide="#ticket-items">
                      <i class="fas fa-list"></i> All Tickets
                    </a>
                    @foreach($ticket as $data)
                    <div class="tickets">
                      <div class="ticket-content" style="width: 100%">
                        <div class="ticket-header">
                          <div class="ticket-sender-picture img-shadow">
                            <img src="{{ asset('img/users/'.$data->user->photo) }}" alt="image">
                          </div>
                          <div class="ticket-detail">
                            <div class="ticket-title">
                              <h4>{{ $data->user->name }}</h4>
                            </div>
                            <div class="ticket-info">
                              <div class="font-weight-600">{{ $data->user->level }}</div>
                              <div class="bullet"></div>
                              <div class="text-primary font-weight-600">{{$data->created_at->diffForHumans()}}</div>
                            </div>
                          </div>
                        </div>
                        <div class="ticket-description">
                          <p>{!! $data->content !!}</p>
                          
                    <div class="ticket-divider"></div>
                        </div>
                      </div>
                    </div>
                    @endforeach
	                   <div class="ticket-form">
	                    <form method="POST" action="">
	                    	@csrf
	                      <div class="form-group">
	                        <textarea class="sutiketmmernote form-control" placeholder="Type a reply ..." name="content"></textarea>
	                      </div>
	                      <div class="form-group text-right">
	                        <button class="btn btn-primary btn-lg">
	                          Reply
	                        </button>
	                      </div>
	                    </form>
	                   </div>
		              </div>
		            
		            </div>
          		</div>
          		<div class="col-md-4">
          			
          		</div>
          	</div>
            
          </div>
        </section>




@endsection