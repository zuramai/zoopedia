@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Log Aktifitas</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item">Aktifitas</div>
				
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-6">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Riwayat Aktifitas</span></h4>
		              </div>
		             
		              <div class="card-body">
		              	
						<div class="table-responsive">
							<table class="table table-striped table-md">
								<tr>
									<th>#</th>
									<th>Waktu</th>
									<th>Type</th>
									<th>Username</th>
									<th>IP</th>
									<th>User Agent</th>
								</tr>
									@foreach($activities as $activity)
									<tr>
										<td>{{ $activity->id }}</td>
										<td>{{ date('d F Y H:i:s', strtotime($activity->created_at)) }}</td>
										<td>{{ $activity->type }}</td>
										<td>{{ $activity->user->name }}</td>
										<td>{{ $activity->ip }}</td>
										<td>{{ $activity->user_agent }}</td>
										<td>{{ $activity->price }}</td>
									</tr>
									@endforeach
							</table>
						</div>
						<div class="float-right">
							{{ $activities->links() }}
						</div>
							                
		              </div>
		            
		            </div>
          		</div>
          		<div class="col-md-6">
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
							{{ $activities->links() }}
						</div>
							                
		              </div>
		            
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>




@endsection