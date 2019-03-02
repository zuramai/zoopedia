@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Isi saldo</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Deposit</a></div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-7">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Isi saldo </span></h4>
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
		                    @if ($errors->has('quantity'))
			                    	<div class="alert alert-danger" role="alert">
			                            <i class="fa fa-exclamation-circle"></i> {{ $errors->first('quantity') }}
			                        </div>
							@endif
			                <div class="form-group">
		                      <label>Tipe</label>
		                      <select class="form-control select2" id="type" name="type">
		                        <option value="">Pilih tipe</option>
		                        <option value="Manual">Manual</option>
		                        <option value="Otomatis">Otomatis</option>
		                      </select>
		                    </div>
			                <div class="form-group">
		                      <label>Metode deposit</label>
		                      <select class="form-control select2" id="method" name="service">
		                        <option value="">Tipe</option>
		                        <option value="ATM">ATM</option>
		                        <option value="ATM">Paypal</option>
		                        <option value="OVO">OVO</option>
		                        <option value="GOPAY">GOPAY</option>
		                        <option value="INDOMARET">Indomaret</option>
		                        <option value="ALFAMART">ALFAMART</option>
		                        <option value="TELKOMSEL">Pulsa Telkomsel</option>
		                        <option value="XL">Pulsa XL/Axis</option>

		                      </select>
		                    </div>
			                <div class="form-group">
		                      <label>Pengirim</label>
		                      <input type="text" class="form-control" name="sender" placeholder="Isi nomor/rekening pengirim (contoh: 08123456)">
		                    </div>
		                    <input type="hidden" name="price" id="price">
			                <div class="form-group">
		                      <label>Jumlah</label>
		                      <input type="number" class="form-control" id="quantity_deposit" name="quantity">
		                    </div>
			                <div class="form-group">
		                      <label>Get balance</label>
		                      <input type="number" class="form-control" id="total" readonly>
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
          					<h4><span>Cara Melakukan Deposit</span></h4>
          				</div>
          				<div class="card-body">
          					<ol>
          						<li>Pilih Tipe terlebih dahulu (Manual/Otomatis)</li>
          						<li>Pilih metode deposit yang ingin kamu gunakan</li>
          						<li>Masukkan nomor pengirim (nomor hp/nomor rekening), jika melalui minimarket isi saja OTOMATIS</li>
          						<li>Masukkan jumlah deposit</li>
          						<li>Tekan tombol submit maka lakukanlah pembayaran sesuai yang diinstruksikan setelahnya</li>
          					</ol>
          				</div>
          			</div>
          		</div>
          	</div>
            
          </div>
        </section>




@endsection