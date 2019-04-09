@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Berita </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item">Berita</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Berita Terbaru</span></h4>
                  </div>
                  <div class="card-body">
                     @if(session('success'))

                        <div class="alert alert-success" role="alert">
                            <i class="fa fa-check-circle"></i> {{ session('success') }}
                        </div>

                    @endif
  		              
                    <div class="table-responsive">
                      <table class="table table-striped table-md">
                          <tr>
                            <th>Tanggal</th>
                            <th>Tipe</th>
                            <th>Judul</th>
                            <th>Isi</th>
                          </tr>
                          @foreach($news as $data)
                          <tr>
                            <td>{{ date('d F Y H:i', strtotime($data->created_at)) }}</td>
                             <td>
                                <span class="badge badge-{{ ($data->type == 'Maintenance' ? 'danger' : ($data->type == 'Info' ? 'info' : 'primary')) }}">
                                  
                                {{ $data->type }}
                                </span>
                              </td>
                            <td>{{ $data->title }}</td>
                            <td>{{ $data->content }}</td>
                          </tr>
                          @endforeach
                      </table>
                    </div>
                    {{ $news->links() }}
                  </div>
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>
@endsection