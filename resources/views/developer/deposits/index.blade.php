@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Kelola Deposit </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item">Deposit</div>
            </div>
          </div>

          <div class="section-body">
          
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
                    <h4><span>Semua Deposit</span></h4>
                  </div>
                  <div class="card-body">
                     @if(session('success'))

                        <div class="alert alert-success" role="alert">
                            <i class="fa fa-check-circle"></i> {{ session('success') }}
                        </div>

                    @endif
                    <div class="float-left">
                          <form method="GET">
                            <div class="input-group">
                              <input type="text" class="form-control" placeholder="Cari ID deposit" name="search">
                              <div class="input-group-append">                                            
                                <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                              </div>
                            </div>
                          </form>
                        </div>
                        <div class="clearfix mb-3"></div>
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
                          @foreach($deposits as $data)
                          <tr>
                            <td>{{ $data->id }}</td>
                            <td>{{$data->created_at}}</td>
                            <td>{{$data->methods->name}}</td>
                            <td>Rp {{number_format($data->quantity)}}</td>
                            <td>{{$data->sender}}</td>
                            <td>Rp {{number_format($data->get_balance)}}</td>
                            <td><span class="badge badge-{{ ($data->status=='Success' ? 'success' : ($data->status == 'Pending' ? 'warning' : 'danger')) }}">{{$data->status}}</span></td>
                            <td>
                              @if($data->status != "Success")
                              <form method="POST" class="form-delete" action="{{ url('developer/deposit/accept') }}">
                                @csrf
                                <input type="hidden" value="{{ $data->id }}" name="id">
                                <button type="submit" class="btn btn-info"  data-delete='{{ $data->id }}' name="accept">
                                  <i class="fa fa-check"></i>
                                </button>
                              </form>
                              @endif
                              <form method="POST" class="form-delete" action="{{ url('developer/deposit/decline') }}">
                                @csrf
                                <input type="hidden" value="{{ $data->id }}" name="id">
                                <button type="submit" class="btn btn-danger"  name="reject">
                                  <i class="fa fa-times"></i>
                                </button>
                              </form>
                            </td>
                          </tr>
                          @endforeach
                      </table>
                    </div>
                    {{ $deposits->links() }}
                  </div>
                </div>
              </div>
            </div>
            
          </div>
        </section>
@endsection