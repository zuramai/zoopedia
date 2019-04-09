@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Riwayat pemesanan</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Order</a></div>
              <div class="breadcrumb-item"><a href="#">Sosial Media</a></div>
				<div class="breadcrumb-item">Riwayat Pemesanan</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Riwayat Pemesanan Pulsa</span></h4>
		              </div>
		             
		              <div class="card-body">
		              	<div class="alert alert-info">
		              		<i class="fa fa-globe-asia"></i>: Order melalui web <br>
		              		<i class="fa fa-random"></i>: Order melalui API
		              	</div>
						<div class="form">
								<div class="row">
								<div class="col-md-6 offset-md-6">
										<form method="GET">
											<div class="input-group mb-3">
												<div class="input-group-prepend">
												    <span class="input-group-text" id="basic-addon1"><i class="fa fa-search"></i></span>
												  </div>
												<input type="text" placeholder="Cari target atau id pesanan" class="form-control" name="search">
											</div>
										</form>
									</div>
								</div>
						</div>					
						<div class="table-responsive">
							<table class="table table-striped table-md">
								<tr>
									<th></th>
									<th>Order ID</th>
									<th>Service</th>
									<th>Target</th>
									<th>Harga</th>
									<th>SN</th>
									<th>Status</th>
									<th>Refund</th>
									
								</tr>
									@foreach($order as $data_order)
									<tr>
										<td><i class="fa fa-{{ ($data_order->place_from == 'WEB' ? 'globe-asia' : 'random') }}"></i></td>
										<td>{{ $data_order->id }}</td>
										<td>{{ $data_order->service->name }}</td>
										<td>{{ $data_order->data }}</td>
										<td>Rp {{ number_format($data_order->price) }}</td>
										<td>{{ $data_order->sn }}</td>
										
										<td><span class="badge badge-{{ ($data_order->status === 'Pending') ? 'warning' : (($data_order->status == 'Error' || $data_order->status == 'Partial') ? 'danger' : (($data_order->status == 'Processing') ? 'primary' : 'success')) }}">{{ $data_order->status }}</span></td>
										<td>
											<span class="badge badge-{{ ($data_order->refund==0) ? 'danger' : 'success'}}">
												@if($data_order->refund == 0) 
													<i class="fa fa-times"></i>
												@else
													<i class="fa fa-check"></i>
												@endif
											</span>
										</td>
									</tr>
									@endforeach
							</table>
						</div>
						<div class="float-right">
							{{ $order->links() }}
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