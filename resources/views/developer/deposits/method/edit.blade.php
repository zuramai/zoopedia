@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Ubah Metode Deposit </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item"><a href="#">Service Category</a></div>
              <div class="breadcrumb-item">Add</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		                <div class="card-header">
		                    <h4><span>Edit Metode Deposit</span></h4>
                        </div>
                        <form method="POST" action="">
                            @method('PUT')
                            @csrf
                          <div class="card-body">
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                              <div class="form-group">
                                <label> Nama metode</label>
                                <input type="text" placeholder="BANK BCA" class="form-control" name="name" value="{{ $method->name }}">
                              </div>
                              <div class="form-group">
                                <label>Rate</label>
                                <input type="text" name="rate" placeholder="No rate = 1" class="form-control" value="{{ $method->rate }}">
                              </div>
                              <div class="form-group">
                                <label>Nomor Tujuan / Rekening</label>
                                <input type="text" name="rekening" placeholder="512315213 A/N UMAM" value="{{ $method->data }}" class="form-control">
                              </div>
                              <div class="form-group">
                                <label>Tipe</label>
                                <select class="form-control" name="type">
                                  <option value="">Pilih salah satu..</option>
                                  <option value="AUTO" {{ ($method->type == 'AUTO' ? 'selected' : '' )}}>Otomatis</option>
                                  <option value="MANUAL" {{ ($method->type == 'MANUAL' ? 'selected' : '') }}>Manual</option>
                                </select>
                              </div>
                              <div class="form-group">
                                <label>Status</label>
                                <select class="form-control" name="status">
                                  <option value="">Pilih salah satu..</option>
                                  <option value="Active" {{ ($method->status == 'Active' ? 'selected':'') }}>Active</option>
                                  <option value="Not Active" {{ ($method->status == 'Not Active' ? 'selected':'') }}>Not Active</option>
                                </select>
                              </div>
                              
                          </div>
                          <div class="card-footer text-right">
                            <button type="submit" class="btn btn-primary">Ubah</button>
                          </div>    
                        </form>
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>
@endsection