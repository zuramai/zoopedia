@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kelola Berita </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item">News</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Kelola Berita</span></h4>
                  </div>
                  <div class="card-body">
                     @if(session('success'))

                        <div class="alert alert-success" role="alert">
                            <i class="fa fa-check-circle"></i> {{ session('success') }}
                        </div>

                    @endif
  		              <div class="card-body-header text-right">
  		                <a href="{{ url('developer/news/add') }}" class="btn btn-primary">Tambah</a>
  		              </div>
                    <div class="mb-3"></div>
                    <div class="table-responsive">
                      <table class="table table-striped table-md">
                          <tr>
                            <th>#</th>
                            <th>Tanggal</th>
                            <th>Tipe</th>
                            <th>Judul</th>
                            <th>Content</th>
                            <th>Action</th>
                          </tr>
                          @foreach($news as $data)
                            <tr>
                              <td>{{ $data->id }}</td>
                              <td>{{ date('d F Y' , strtotime($data->created_at)) }}</td>
                              <td>
                                <span class="badge badge-{{ ($data->type == 'Maintenance' ? 'danger' : ($data->type == 'Info' ? 'info' : 'primary')) }}">
                                  
                                {{ $data->type }}
                                </span>
                              </td>
                              <td>{{ $data->title }}</td>
                              <td><?php  echo nl2br($data->content) ?></td>
                              <td class="inline-button">
                                <a href="{{url('developer/news/edit/'. $data->id) }}" class="btn btn-primary">
                                  <i class="fa fa-edit"></i>
                                </a>
                                <form method="POST">
                                  @method('delete')
                                  @csrf
                                  <input type="hidden" value="{{ $data->id }}" name="id">
                                  <button type="submit" class="btn btn-danger"><i class="fa fa-trash"></i></button>
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