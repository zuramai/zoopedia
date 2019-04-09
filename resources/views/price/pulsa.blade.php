@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Daftar Layanan</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item"><a href="#">Daftar Layanan</a></div>
              <div class="breadcrumb-item">Pulsa & PPOB</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Daftar Layanan Pulsa & PPOB</span></h4>
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

				
                      <div class="float-right">
                      <form method="GET">
                        <div class="input-group">
                          <input type="text" class="form-control" placeholder="Cari nama layanan.." name="search">
                          <div class="input-group-append">                                            
                            <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                          </div>
                        </div>
                      </form>
                    </div>
                    
                    <div class="clearfix mb-3"></div>

                    <div class="table-responsive">
                      <table class="table table-striped">
                        <tr>
                          <th>ID Layanan</th>
                          <th>Nama</th>
                          <th>Kategori</th>
                          <th>Tipe</th>
                          <th>Harga</th>
                          <th>Status</th>
                        </tr>
                        
                        @foreach($service as $data)
                        <tr> 
                          <td>{{ $data->id }}</td>
                          <td>{{ $data->name }}</td>
                          <td>{{ $data->category->name }}</td>
                          <td>{{ $data->oprator->name }}</td>
                          <td>{{ $data->price }}</td>
                          <td><span class="badge badge-{{ ($data->status=='Active') ? 'success':'danger' }}">{{ $data->status }}</span></td>
                        </tr>
                        @endforeach
                      </table>
                    </div> 
							       <div class="overflow-x-auto">
                      {{$service->onEachSide(1)->links()}}
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