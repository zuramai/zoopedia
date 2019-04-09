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
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-primary">
                  <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Total Order</h4>
                  </div>
                  <div class="card-body">
                    {{$orders->count()}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-danger">
                  <i class="fas fa-dollar-sign "></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Total Jumlah Order</h4>
                  </div>
                  <div class="card-body">
                    Rp {{number_format($total,0,',','.')}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-success">
                  <i class="fas fa-check-circle"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Jumlah transaksi sukses </h4>
                  </div>
                  <div class="card-body">
                    {{$success->count()}}
                  </div>
                </div>
              </div>
            </div>                  
          </div>
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
                          <input type="text" class="form-control" placeholder="Cari ID order atau target" name="search">
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
                                    <th>Poid</th>
                                    <th>User</th>
                                    <th>Service</th>
                                    <th>Target</th>
                                    <th>Quantity</th>
                                    <th>Start/Remains</th>
                                    <th>Price</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                @foreach($orders as $order)
                                <tr>
                                    <td>{{ $order->id }}</td>
                                    <td>{{ $order->poid }}</td>
                                    <td>{{ $order->user->name }}</td>
                                    <td>{{ $order->service->name }}</td>
                                    <td>{{ $order->target }}</td>
                                    <td>{{ $order->quantity }}</td>
                                    <td>{{ $order->start_count.'/'.$order->start_count }}</td>
                                    <td>Rp {{ $order->price }}</td>
                                    <td><span class="badge badge-{{ ($order->status === 'Pending') ? 'warning' : (($order->status == 'Error' || $order->status == 'Partial') ? 'danger' : (($order->status == 'Processing') ? 'primary' : 'success')) }}">{{ $order->status }}</span></td>
                                    <td style="display: inline-block;">
                                        <a href="{{ url('developer/orders/sosmed/detail/'.$order->id)}}" class="btn btn-secondary"><i class="fa fa-eye"></i></a>
                                        <a href="{{ url('developer/orders/sosmed/edit/'.$order->id)}}" class="btn btn-primary"><i class="fa fa-edit"></i></a>
                                    

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