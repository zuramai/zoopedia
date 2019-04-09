@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>New ticket</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item"><a href="{{ url('/') }}">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="{{ url('/ticket') }}">Ticket</a></div>
              <div class="breadcrumb-item">Add</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Tiket Baru</span></h4>
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
	                    @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
						<div class="form">
							<form method="POST" action="">
								@csrf
							  <div class="form-group row">
							    <label for="staticEmail" class="col-sm-2 col-form-label">Judul</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" placeholder="Judul tiket" name="title">
							    </div>
							  </div>
							  <div class="form-group row">
							    <label for="inputPassword" class="col-sm-2 col-form-label">Konten</label>
							    <div class="col-sm-10">
							      <textarea class="summernote-simple" placeholder="Jelaskan masalahmu disini.." name="content"></textarea>
							    </div>
							  </div>
							  <div class="float-right">
							  	<button type="submit" class="btn btn-primary">Submit</button>
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