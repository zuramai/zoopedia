@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Tambah Pengguna</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Staff</a></div>
              <div class="breadcrumb-item">Add User</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-7">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Tambahkan Pengguna Baru</span></h4>
		              </div>
		              <form method="POST" action="">
		              	@csrf
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
			                <div class="form-group">
		                      <label>Level</label>
		                      <select class="form-control select2" id="level" name="level">
		                        <option>Pilih salah satu..</option>
		                        <option value="Member">Member</option>

		                        @if(auth()->user()->level == 'Admin' || auth()->user()->level == 'Developer'  || auth()->user()->level == 'Reseller' )
		                        <option value="Agen">Agen</option>
		                        @endif

		                        @if(auth()->user()->level == 'Admin' || auth()->user()->level == 'Developer')
		                        <option value="Reseller">Reseller</option>
		                        @endif

		                        @if(auth()->user()->level == 'Developer')
		                        <option value="Admin">Admin</option>
		                        @endif
		                      </select>
		                    </div>
			                <div class="form-group">
		                      <label>Nama</label>
		                      <input type="text" name="name" class="form-control"> 
		                    </div>
			                <div class="form-group">
		                      <label>Email</label>
		                      <input type="email" name="email" class="form-control"> 
		                    </div>
			                <div class="form-group">
		                      <label>Password</label>
		                      <input type="text" name="password" class="form-control"> 
		                    </div>
		                    <div id="information">
			                    
		                    </div>
			              </div>
			              <div class="card-footer text-right">
			                <button type="submit" class="btn btn-primary">Submit</button>
			              </div>
		              </form>
		            </div>
          		</div>
          		<div class="col-md-5">
          			<div class="card">
          				<div class="card-header">
          					<h4><span>Panduan</span></h4>
          				</div>
          				<div class="card-body">
          					<ol>
          						<li><b>Harga daftarkan member:</b> Rp {{ number_format(env('ADD_MEMBER_PRICE')) }},<br><b>Bonus saldo: </b>Rp {{number_format(env('MEMBER_BALANCE'))}}</li>
          						<li><b>Harga daftarkan agen:</b> Rp {{ number_format(env('ADD_AGEN_PRICE')) }},<br><b>Bonus saldo: </b>Rp {{number_format(env('AGEN_BALANCE'))}}</li>
          						<li><b>Harga daftarkan reseller:</b> Rp {{ number_format(env('ADD_RESELLER_PRICE')) }},<br><b>Bonus saldo: </b>Rp {{number_format(env('RESELLER_BALANCE'))}}</li>
          						<li><b>Harga daftarkan reseller:</b> Rp {{ number_format(env('ADD_ADMIN_PRICE')) }},<br><b>Bonus saldo: </b>Rp {{number_format(env('ADMIN_BALANCE'))}}</li>
          					</ol>
          				</div>
          			</div>
          		</div>
          	</div>
            
          </div>
        </section>




@endsection