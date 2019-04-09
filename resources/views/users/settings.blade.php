@extends('layouts.sidebar')
@section('content')
<section class="section">
          <div class="section-header">
            <h1>Settings</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item"><a href="#">User</a></div>
              <div class="breadcrumb-item">Settings</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-7">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Profile</span></h4>
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

						<form method="POST" enctype="multipart/form-data">
							@csrf
							<div class="row">
								<div class="col-md-12">
									<div class="image d-flex justify-content-center flex-column align-items-center">
										<img src="{{ asset('img/users/'.$user->photo) }}" class="img-setting" id="img-setting">
										<button type="button" class="btn btn-primary" onclick="document.getElementById('image-user').click()">Choose image</button>
										<input type="file" id="image-user" name="photo" onchange="document.getElementById('img-setting').src = window.URL.createObjectURL(this.files[0])" class="form-hide">

									</div>
									<div class="form mt-2">
										<div class="form-group">
											<label>Fullname</label>
											<input type="text" name="name" class="form-control" value="{{ $user->name }}">
										</div>
										<div class="form-group">
											<label>Email</label>
											<input type="text" name="email" class="form-control" value="{{ $user->email }}" readonly="">
										</div>
										<div class="form-group">
											<button "submit" class="btn btn-primary float-right">Ubah </button>
										</div>
									</div>
								</div>
							</div>
						</form>
						
							                
		              </div>
		            
		            </div>
          		</div>
          		<div class="col-md-5">
          			<div class="card">
          				<div class="card-header">
          					<h4>API Key</h4>
          				</div>
          				<form method="POST">
          					@csrf
	          				<div class="card-body">
	          					<input type="text" readonly="" name="key" id="key" class="form-control" value="{{ $user->api_key}}" name="api_key">
	          				</div>
	          				<div class="card-footer overflow-hidden">
	          					<input type="submit" name="submit" class="btn btn-info float-right" value="Change API Key">
	          				</div>
          				</form>
          			</div>
          			<div class="card">
          				<div class="card-header">
          					<h4>Ubah Password</h4>
          				</div>
          				<form method="POST">
          					@csrf
	          				<div class="card-body">
	          					<div class="form-group">
		          					<label>Password sekarang</label>
		          					<input type="password"  name="oldpassword" id="key" class="form-control" value="" placeholder="Masukkan password sekarang">
	          					</div>
	          					<div class="form-group">
		          					<label>Password baru</label>
		          					<input type="password"  name="newpassword" id="key" class="form-control" value="" placeholder="Masukkan password sekarang">
	          					</div>
	          					<div class="form-group">
		          					<label>Ulangi password baru</label>
		          					<input type="password"  name="newpassword_confirmation" id="key" class="form-control" value="" placeholder="Masukkan password sekarang">
	          					</div>
	          				</div>
	          				<div class="card-footer overflow-hidden">
	          					<input type="submit" name="submit" class="btn btn-info float-right" value="Ubah Password">
	          				</div>
          				</form>
          			</div>
          		</div>
          	</div>
            
          </div>
        </section>

@endsection	