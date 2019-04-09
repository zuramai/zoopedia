@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>All Tickets</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item"><a href="{{ url('/') }}">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item">Tickets</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Semua Tiket</span></h4>
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
						<div class="float-right">
							<a href="{{ url('developer/ticket/add') }}" class="btn btn-primary">New ticket</a>
						</div>
						<div class="clearfix mb-3"></div>
						<div class="table-responsive">
							<table class="table table-striped">	
								<tr>
									<th>ID</th>
									<th>User</th>
									<th>Judul</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
								@foreach($tickets as $ticket)
								<tr>
									<td>{{ $ticket->id }}</td>
									<td>{{ $ticket->user->email }}</td>
									<td>{{ $ticket->subject }}</td>
									<td>
										<span class="badge badge-{{($ticket->status == 'Open'?'success':($ticket->status == 'Closed'?'danger':'info'))}}">{{ $ticket->status }}
									</td>
									<td>
										<a href="{{ url('/developer/ticket/'.$ticket->id) }}" class="btn btn-secondary">
											<i class="fas fa-eye"></i>
										</a>
									</td>
								</tr>
								@endforeach
							</table>
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