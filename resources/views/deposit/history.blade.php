@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Riwayat Deposit </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Deposit</a></div>
              <div class="breadcrumb-item">History</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>Riwayat Deposit</span></h4>
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
                            <th>#</th>
                            <th>Tanggal</th>
                            <th>Type</th>
                            <th>Jumlah</th>
                            <th>Pengirim</th>
                            <th>Get saldo</th>
                            <th>Status</th>
                            <th>Action</th>
                          </tr>
                          @foreach($deposit as $data)
                          <tr>
                            <td>{{ $data->id }}</td>
                            <td>{{$data->created_at}}</td>
                            <td>{{$data->methods->name}}</td>
                            <td>{{$data->quantity}}</td>
                            <td>{{$data->sender}}</td>
                            <td>{{$data->get_balance}}</td>
                            <td><span class="badge badge-{{ $data->status=='Success' ? 'success' : ($data->status == 'Pending') ? 'warning' : 'danger' }}">{{$data->status}}</span></td>
                            <td>
                              @if($data->methods->type == 'MANUAL')
                                <a href="{{ url('contact') }}" class="btn btn-info">Konfirmasi</a>
                              @endif
                              @if(!$data->status == 'Canceled' || !$data->status == 'Success')
                              <form method="POST" class="form-delete">
                                @csrf
                                @method('delete')
                                <input type="hidden" value="{{ $data->id }}" name="id">
                                <button type="submit" class="btn btn-danger" id="cancel_deposit" data-delete='{{ $data->id }}'>Cancel</button>
                              </form>
                              @endif
                            </td>
                          </tr>
                          @endforeach
                      </table>
                    </div>
                    {{ $deposit->links() }}
                  </div>
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>
@endsection