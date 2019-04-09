@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Daftar Layanan</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item"><a href="#">Daftar Layanan</a></div>
              <div class="breadcrumb-item">Sosial Media</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Daftar Layanan Sosial Media</span></h4>
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
	                        <form>
	                          <div class="input-group">
	                            <input type="text" class="form-control" placeholder="Search">
	                            <div class="input-group-append">                                            
	                              <button class="btn btn-primary"><i class="fas fa-search"></i></button>
	                            </div>
	                          </div>
	                        </form>
	                      </div>
	                      <div class="clearfix mb-3"></div>
						<div class="table-responsive">
							<table class="table table-striped table-lg">
								<tr>
									<th>ID</th>
									<th>Category</th>
									<th>Name</th>
									<th>Min/Max</th>
									<th>Price</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
									@foreach($service as $data_service)
									<tr>
										<td>{{ $data_service->id }}</td>
										<td>{{ $data_service->category->name }}</td>
										<td>{{ $data_service->name }}</td>
										<td>{{ $data_service->min }}/{{ $data_service->max }}</td>
										<td>Rp {{ number_format($data_service->price) }}</td>
										<td><span class="badge badge-{{ ($data_service->status=='Active') ? 'success':'danger' }}">{{ $data_service->status }}</span></td>
										<td>
											<a href="#" class="btn btn-secondary">Detail</a>
										</td>
									</tr>
									@endforeach
							</table>
						</div>
						<div class="float-right">
							{{ $service->links() }}
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