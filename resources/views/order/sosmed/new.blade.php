@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>New order</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Order</a></div>
              <div class="breadcrumb-item">Sosial Media</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-7">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Sosial Media</span></h4>
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
		                      <label>Kategori</label>
		                      <select class="form-control select2" id="category">
		                        <option>Pilih salah satu..</option>
		                        @foreach($cat as $data_category)
		                        	<option value="{{ $data_category->id }}">{{ $data_category->name }}</option>
		                        @endforeach
		                      </select>
		                    </div>
			                <div class="form-group">
		                      <label>Layanan</label>
		                      <select class="form-control select2" id="service" name="service">
		                        <option value="">Pilih kategori terlebih dahulu</option>
		                      </select>
		                    </div>
		                    <div id="information">
			                    
		                    </div>
			                <div class="form-group">
		                      <label>Target (BACA NOTE)	</label>
		                      <input type="text" class="form-control" name="target">
		                    </div>
		                    <div id="additional">
		                    	<div class="form-group"  id="custom_comment" style="display: none">
			                    	<label>Custom Comment (1 komen = 1 baris)</label>
			                    	<textarea class="form-control" placeholder="Masukkan komentar per baris" name="custom_comment" id="t_custom_comment"></textarea>
		                    	</div>
		                    	<div class="form-group" id="comment_likes"  style="display: none">
			                    	<label>Custom Likes (1 komen = 1 baris)</label>
			                    	<input type="text" class="form-control" name="comment_likes" placeholder="Masukkan username yang melakukan komentar">
		                    	</div>
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
          						<li>Masukkan target sesuai aturan. Instagram followers menggunakan username, Selengkapnya: <a href="{{ url('/order/sosmed/terms_of_service') }}">Cara memasukkan target</a></li>
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