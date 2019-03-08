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
                    <div class="table-responsive">
                      <table class="table table-bordered table-md">
                          <tr>
                            <th>#</th>
                            <th>Tanggal</th>
                            <th>Tipe</th>
                            <th>Content</th>
                          </tr>
                          @foreach($news as $data)
                            <tr>
                              <td>{{ $data->id }}</td>
                              <td>{{ $data->created_at }}</td>
                              <td>{{ $data->type }}</td>
                              <td><?php  echo nl2br($data->content) ?></td>
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