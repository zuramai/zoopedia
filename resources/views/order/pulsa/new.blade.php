@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>New order</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="/order">Order</a></div>
              <div class="breadcrumb-item">Pulsa & PPOB</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-7">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Pulsa & PPOB</span></h4>
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
		                      <label>Kategori</label>
		                      <select class="form-control select2" id="category_pulsa">
		                        <option>Pilih salah satu..</option>
		                        @foreach($cat as $data_category)
		                        	<option value="{{ $data_category->id }}">{{ $data_category->name }}</option>
		                        @endforeach
		                      </select>
		                    </div>
			                <div class="form-group">
		                      <label>Layanan</label>
		                      <select class="form-control select2" id="service_pulsa" name="service">
		                        <option value="">Pilih kategori terlebih dahulu</option>
		                      </select>
		                    </div>
		                    <div id="information">
			                    
		                    </div>
			                <div class="form-group">
		                      <label>Target (BACA NOTE)	</label>
		                      <input type="text" class="form-control" name="target">
		                    </div>
		                    <input type="hidden" name="price" id="price">
			                <div class="form-group">
		                      <label>Quantity</label>
		                      <input type="number" class="form-control" id="quantity" name="quantity">
		                    </div>
			                <div class="form-group">
		                      <label>Total Price</label>
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
          					<h4><span>Cara Pemesanan</span></h4>
          				</div>
          				<div class="card-body">
          					<ol>
          						<li>Pilih kategori terlebih dahulu</li>
          						<li>Pilih layanan yang ingin digunakan</li>
          						<li>Masukkan target sesuai aturan. Instagram followers menggunakan username, Selengkapnya: <a href="">Cara memasukkan target</a></li>
          						<li>Masukkan jumlah yang ingin dipesan</li>
          						<li>Tekan tombol submit dan pesanan anda akan segera diproses</li>
          					</ol>
          				</div>
          			</div>
          		</div>
          	</div>
            
          </div>
        </section>




@endsection