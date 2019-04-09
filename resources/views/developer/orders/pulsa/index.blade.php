@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kelola Order</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item">Services</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Kelola Order</span></h4>
		              </div>
		              <div class="card-body">
                    <div class="float-left">
                          <form method="GET">
                            <div class="input-group">
                              <input type="text" class="form-control" placeholder="Cari ID order atau nomor tujuan" name="search">
                              <div class="input-group-append">                                            
                                <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                              </div>
                            </div>
                          </form>
                        </div>
                        <div class="clearfix mb-3"></div>
		              	@if(session('success'))

                        <div class="alert alert-success" role="alert">
                            <i class="fa fa-check-circle"></i> {{ session('success') }}
                        </div>

                    	@endif
                          <div class="table-responsive">
                                <table class="table table-striped table-md">
                                <tr>
                                    <th>ID</th>
                                    <th>POID</th>
                                    <th>User</th>
                                    <th>Layanan</th>
                                    <th>Harga</th>
                                    <th>Target</th>
                                    <th>SN</th>
                                    <th>Status</th>
                                    <th>Refund</th>
                                    <th>Action</th>
                                </tr>
                                @foreach($orders as $order)
                                <tr>
                                    <td>{{ $order->id }}</td>
                                    <td>{{ $order->poid }}</td>
                                    <td>{{ $order->user->name }}</td>
                                    <td>{{ $order->service->name }}</td>
                                    <td>{{ $order->price }}</td>
                                    <td>{{ $order->data }}</td>
                                    <td>{{ $order->sn }}</td>
                                    <td><span class="badge badge-{{ ($order->status === 'Pending') ? 'warning' : (($order->status == 'Error' || $order->status == 'Partial') ? 'danger' : (($order->status == 'Processing') ? 'primary' : 'success')) }}">{{ $order->status }}</span></td>
                                    <td>
                                      <span class="badge badge-{{ ($order->refund==0) ? 'danger' : 'success'}}">
                                      @if($order->refund == 0) 
                                        <i class="fa fa-times"></i>
                                      @else
                                        <i class="fa fa-check"></i>
                                      @endif
                                    </span>
                                    </td>
                                    <td style="display: inline-block;">
                                        <a href="{{ url('developer/orders/pulsa/edit/'.$order->id)}}" class="btn btn-primary"><i class="fa fa-edit"></i></a>
                                    

                                    </td>
                                </tr>
                                @endforeach
                            </table>
                          </div>
		              </div>
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>
@endsection