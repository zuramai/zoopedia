@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kelola Provider </h1>
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
		                <h4><span>Kelola Provider Layanan</span></h4>
                  </div>
                  <div class="card-body">
                     @if(session('success'))

                        <div class="alert alert-success" role="alert">
                            <i class="fa fa-check-circle"></i> {{ session('success') }}
                        </div>

                    @endif
  		              <div class="card-body-header text-right">
  		                <a href="{{ url('developer/providers/add') }}" class="btn btn-primary">Tambah</a>
  		              </div>
                    <div class="table-responsive">
                      <table class="table table-bordered table-md">
                          <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>API Key</th>
                            <th>API Link</th>
                            <th>Type</th>
                            <th>Action</th>
                          </tr>
                          @foreach($prov as $data)
                          <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{$data->name}}</td>
                            <td>{{$data->api_key}}</td>
                            <td>{{$data->link}}</td>
                            <td>{{$data->type}}</td>
                            <td>
                              <a href="{{ url('developer/providers/edit/'.$data->id) }}" class="btn btn-info">Edit</a>
                              <form method="POST" class="form-delete">
                                @method('delete')
                                @csrf
                                <input type="hidden" value="{{ $data->id }}" name="id">
                                <button type="submit" class="btn btn-danger">Delete</button>
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
            
          </div>
        </section>
@endsection