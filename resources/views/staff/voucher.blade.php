@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kode Voucher</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Staff</a></div>
              <div class="breadcrumb-item">Kode Voucher</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-7">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Buat Kode Voucher baru</span></h4>
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
		                      <input type="text" name="code" class="form-control" placeholder="Kosongkan untuk kode acak">
		                    </div>
			                <div class="form-group">
		                      <label>Nominal saldo</label>
		                      <input type="number" name="quantity" class="form-control" placeholder="Jumlah saldo yang didapatkan"> 
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
          						<li>Minimal nominal voucher adalah 5000</li>
          						<li>Saldo anda akan di potong sesuai nominal voucher</li>
          						<li>Saldo tidak akan dikembalikan jika menghapus voucher yang masih tersedia</li>
          					</ol>
          				</div>
          			</div>
          		</div>
          	</div>
          	<div class="row">
          		<div class="col-12">
          			<div class="card">
          				<div class="card-header">
          					<h4>Daftar Kode</h4>
          				</div>
          				<div class="card-body">
          					<div class="table-responsive">
          						<table class="table table-striped">
          							<thead>
          								<tr>
          									<th>#</th>
          									<th>Kode</th>
          									<th>Nominal</th>
          									<th>Status</th>
          									<th>Action</th>
          								</tr>
          							</thead>
          							<tbody>
          								@foreach($vouchers as $voucher)
          								<tr>
          									<td>{{ $loop->iteration  }}</td>
          									<td>{{ $voucher->code }}</td>
          									<td>Rp {{ number_format($voucher->quantity) }}</td>
          									<td>
          										<span class="badge badge-{{ $voucher->status == 'Available' ? 'success' : 'danger' }}">{{ $voucher->status }}</span>
          									</td>
          									<td>
          										<form method="POST">
          											@method('delete')
          											@csrf
          											<input type="hidden" name="id" value="{{$voucher->id}}">
          											<button type="submit" class="btn btn-danger btn-md"><i class="fa fa-trash"></i></button>
          										</form>
          									</td>
          								</tr>
          								@endforeach
          							</tbody>
          						</table>
          					</div>
          				</div>
          			</div>
          		</div>
          	</div>			
            
          </div>
        </section>




@endsection