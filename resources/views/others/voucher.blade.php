@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kode Voucher</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item">Kode Voucher</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-7">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Claim Kode Voucher</span></h4>
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
		                      <label>Kode voucher</label>
		                      <input type="text" name="code" class="form-control" placeholder="Masukkan kode voucher">
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
          						<li>Kode voucher hanya dapat digunakan satu kali</li>
                      <li>Saldo akan ditambahkan jika submit kode voucher berhasil</li>
          					</ol>
          				</div>
          			</div>
          		</div>
          	</div>		
            
          </div>
        </section>




@endsection