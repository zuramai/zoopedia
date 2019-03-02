@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>New order</h1>
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
		                <h4><span>Riwayat Pemesanan</span></h4>
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
							<table class="table table-bordered table-md">
								<tr>
									<th>ID</th>
									<th>Service</th>
									<th>Target</th>
									<th>Quantity</th>
									<th>Start/Remains</th>
									<th>Price</th>
									<th>Status</th>
									<th>Refund</th>
									<th>Action</th>
								</tr>
									@foreach($order as $data_order)
									<tr>
										<td>{{ $data_order->id }}</td>
										<td>{{ $data_order->service->name }}</td>
										<td>{{ $data_order->target }}</td>
										<td>{{ $data_order->quantity }}</td>
										<td>{{ $data_order->start_count }}/{{$data_order->remains}}</td>
										<td>{{ $data_order->price }}</td>
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
										<td>
											<a href="#" class="btn btn-secondary">Detail</a>
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