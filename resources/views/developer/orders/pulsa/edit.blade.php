@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Edit Order </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item"><a href="#">Service Category</a></div>
              <div class="breadcrumb-item">Add</div>
            </div>
          </div>

          <div class="section-body">
          
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4><span>Edit Order </span></h4>
                        </div>
                        <form method="POST" action="">
                            @csrf
                          <div class="card-body">
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
                                <label>Order id</label>
                                <input type="text" placeholder="Nama layanan.." class="form-control" name="name" value="{{ $order->id }}" disabled>
                              </div>
                              <div class="form-group">
                                <label>Provider id</label>
                                <input type="text" placeholder="Nama layanan.." class="form-control" name="name" value="{{ $order->poid }}" disabled>
                              </div>
                              <div class="form-group">
                                <label>User</label>
                                <input type="text" value='{{ $order->user->name }}' class="form-control" disabled>
                              </div>
                              <div class="form-group">
                                <label>Service</label>
                                <input type="text" value='{{ $order->service->name }}' class="form-control" disabled>
                              </div>
                              <div class="form-group">
                                <label>Target</label>
                                <input type="text" value='{{ $order->data }}' name="target" class="form-control" disabled>
                              </div>
                              <div class="form-group">
                                <label>SN</label>
                                <input type="text" value='{{ $order->sn }}' name="sn" class="form-control" >
                              </div>
                              
                            <div class="form-group">
                                <label>Status</label>
                                <select name="status" id="" class="form-control">
                                    <option value="Pending" {{ ($order->status == 'Pending') ? 'selected' : '' }}>Pending</option>
                                    <option value="Processing" {{ ($order->status == 'Processing') ? 'selected' : '' }}>Processing</option>
                                    <option value="Success" {{ ($order->status == 'Success') ? 'selected' : '' }}>Success</option>
                                    <option value="Error" {{ ($order->status == 'Error') ? 'selected' : '' }}>Error</option>
                                </select>
                            </div>
                              
                              
                          </div>
                          <div class="card-footer text-right">
                            <button type="submit" class="btn btn-primary">Edit</button>
                          </div>    
                        </form>
                </div>
              </div>
            </div>
            
          </div>
        </section>
@endsection