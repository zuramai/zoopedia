@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Hall of Fame</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="{{ url('/') }}">Dashboard</a></div>
              <div class="breadcrumb-item">Hall of Fame</div>
				
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-6">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Top 10 Pembelian Sosial Media</span></h4>
		              </div>
		             
		              <div class="card-body">
		              	
						<div class="table-responsive">
							<table class="table table-striped table-md">
								<tr>
									<th>#</th>
									<th>Nama</th>
									<th>Pembelian</th>
								</tr>
								@foreach($top_sosmed as $sosmed)
								<tr>
									<td>{{ $loop->iteration }}</td>
									<td>{{ $sosmed->name }}</td>
									<td>{{ $sosmed->jumlah }} Pembelian (Rp. {{number_format($sosmed->price)}})</td>
								</tr>
								@endforeach
							</table>
						</div>
							                
		              </div>
		            
		            </div>
          		</div>
          		<div class="col-md-6">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Top 10 Pembelian Pulsa</span></h4>
		              </div>
		             
		              <div class="card-body">
		              	
						<div class="table-responsive">
							<table class="table table-striped table-md">
								<tr>
									<th>#</th>
									<th>Nama</th>
									<th>Pembelian</th>
								</tr>
								@foreach($top_pulsa as $pulsa)
								<tr>
									<td>{{ $loop->iteration }}</td>
									<td>{{ $pulsa->name }}</td>
									<td>{{ $pulsa->jumlah }} Pesanan (Rp {{ number_format($pulsa->price) }})</td>
								</tr>
								@endforeach
							</table>
						</div>                
		              </div>
		            </div>
          		</div>
          	</div>

          	
  			<div class="card">
              <div class="card-header">
                <h4><span>Top 10 Deposit Tertinggi</span></h4>
              </div>
             
              <div class="card-body">
              	
				<div class="table-responsive">
					<table class="table table-striped table-md">
						<tr>
							<th>#</th>
							<th>Nama</th>
							<th>Jumlah deposit</th>
						</tr>
						@foreach($top_deposit as $deposit)
						<tr>
							<td>{{ $loop->iteration }}</td>
							<td>{{ $deposit->name }}</td>
							<td>Rp {{ number_format($deposit->total_deposit) }}</td>
						</tr>
						@endforeach
					</table>
				</div>                
              </div>
            </div>
  			<div class="card">
              <div class="card-header">
                <h4><span>Top 10 Layanan Sosial Media</span></h4>
              </div>
             
              <div class="card-body">
              	
				<div class="table-responsive">
					<table class="table table-striped table-md">
						<tr>
							<th>#</th>
							<th>Nama Layanan</th>
							<th>Pembelian</th>
						</tr>
						@foreach($top_layanan as $layanan)
						<tr>
							<td>{{ $loop->iteration }}</td>
							<td>{{ $layanan->name }}</td>
							<td>{{ $layanan->jumlah_order }} Pembelian</td>
						</tr>
						@endforeach
					</table>
				</div>                
              </div>
            </div>
          		
            
          </div>
        </section>




@endsection