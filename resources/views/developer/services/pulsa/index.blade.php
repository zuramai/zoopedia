@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kelola Layanan</h1>
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
		                <h4><span>Kelola Layanan Pulsa</span></h4>
		              </div>
		              <div class="card-body">
		              	@if(session('success'))

                        <div class="alert alert-success" role="alert">
                            <i class="fa fa-check-circle"></i> {{ session('success') }}
                        </div>

                    	@endif
		              	<div class="card-body-header text-right">
	  		            	<a href="{{ url('developer/services/add') }}" class="btn btn-primary">Tambah</a>
	  		            </div>
		                <table class="table table-bordered table-md">
                        <tr>
                          <th>ID</th>
                          <th>Nama</th>
                          <th>Kategori</th>
                          <th>Min</th>
                          <th>Max</th>
                          <th>Price</th>
                          <th>Status</th>
                          <th>Action</th>
                        </tr>
                        @foreach($service as $data)
                        <tr>
                          <td>{{ $data->id }}</td>
                          <td>{{ $data->name }}</td>
                          <td>{{ $data->category->name }}</td>
                          <td>{{ $data->min }}</td>
                          <td>{{ $data->max }}</td>
                          <td>{{ $data->price }}</td>
                          <td><div class="badge badge-success">Active</div></td>
                          <td style="display: inline-block;">
                          	<a href="{{ url('developer/services/detail/'.$data->id)}}" class="btn btn-secondary"><i class="fa fa-eye"></i></a>
                          	<a href="{{ url('developer/services/edit/'.$data->id)}}" class="btn btn-primary"><i class="fa fa-edit"></i></a>
                          	<form method="POST" class="form-delete">
                                @method('delete')
                                @csrf
                                <input type="hidden" value="{{ $data->id }}" name="id">
                                <button type="submit" class="btn btn-danger">
                                	<i class="fa fa-trash"></i>
                                </button>
                              </form>

                          </td>
                        </tr>
                        @endforeach
                      </table>
		              </div>
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>
@endsection