@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kelola Metode Deposit </h1>
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
                    <h4><span>Kelola Metode Deposit Pulsa</span></h4>
                  </div>
                  <div class="card-body">
                     @if(session('success'))

                        <div class="alert alert-success" role="alert">
                            <i class="fa fa-check-circle"></i> {{ session('success') }}
                        </div>

                    @endif
                    <div class="float-left">
                      <a href="{{ url('developer/deposit/method/add') }}" class="btn btn-primary">Tambah</a>
                    </div>

                    <div class="clearfix mb-3"></div>

                    <div class="table-responsive">
                      <table class="table table-striped table-md">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Type</th>
                            <th>Data</th>
                            <th>Rate</th>
                            <th>Status</th>
                            <th>Action</th>
                          </tr>
                          @foreach($methods as $method)
                          <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{$method->name}}</td>
                            <td>{{$method->type}}</td>
                            <td>{{$method->data}}</td>
                            <td>{{$method->rate}}</td>
                            <td><span class="badge badge-{{ $method->status=='Active' ? 'success' : 'danger' }}">{{$method->status}}</span></td>
                            <td>
                              <a href="{{ url('developer/deposit/method/edit/'.$method->id) }}" class="btn btn-info">Edit</a>
                              <form method="POST" class="form-delete">
                                @method('delete')
                                @csrf
                                <input type="hidden" value="{{ $method->id }}" name="id">
                                <button type="submit" class="btn btn-danger">Delete</button>
                              </form>
                            </td>
                          </tr>
                          @endforeach
                      </table>
                    </div> 
                    {{$methods->links()}}
                  </div>
                </div>
              </div>
              
            </div>
          	<div class="row">
          	</div>
            
          </div>
        </section>
@endsection