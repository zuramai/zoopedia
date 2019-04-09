@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Penggunaan Saldo</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item">Aktifitas</div>
				
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Riwayat Penggunaan Saldo</span></h4>
		              </div>
		             
		              <div class="card-body">
		              	
						<div class="table-responsive">
							<table class="table table-striped table-md">
								<tr>
									<th>#</th>
									<th>Action</th>
									<th>Username</th>
									<th>Deskripsi</th>
									<th>Tanggal</th>
								</tr>
									@foreach($balance_histories as $history)
									<tr>
										<td>{{ $history->id }}</td>
										<td>
											<span class="badge badge-{{ ($history->action == 'Cut Balance') ? 'danger' : 'success' }}">		
												{{ $history->action }}
											</span>
										</td>
										<td>{{ $history->user->name }}</td>
										<td>{{ $history->desc }}</td>
										<td>{{ date('d F Y H:i:s', strtotime($history->created_at)) }}</td>
									</tr>
									@endforeach
							</table>
						</div>
						<div class="float-right">
							{{ $balance_histories->links() }}
						</div>
							                
		              </div>
		            
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>




@endsection