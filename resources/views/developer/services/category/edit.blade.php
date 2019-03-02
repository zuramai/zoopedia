@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Ubah Kategori </h1>
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
		                    <h4><span>Ubah Kategori Layanan</span></h4>
                        </div>
                        <form method="POST" action="">
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
                                <label>Nama kategori</label>
                                <input type="text" placeholder="Nama kategori.." class="form-control" name="name" value="{{ $scat->name }}">
                              </div>
                              <div class="form-group">
                                <label>Tipe</label>
                                <select class="form-control" name="type">
                                  <option value="">Choose one..</option>
                                  <option value="SOSMED" {{ ($scat->type == 'SOSMED') ? 'selected' : '' }}>Sosial Media</option>
                                  <option value="PULSA" {{ ($scat->type == 'PULSA') ? 'selected' : '' }}>Pulsa</option>
                                </select>
                              </div>
                              <div class="form-group">
                                <label>Status</label>
                                <select class="form-control" name="type">
                                  <option value="">Choose one..</option>
                                  <option value="Active" {{ ($scat->status == 'Active') ? 'selected' : '' }}>Active</option>
                                  <option value="Not Active" {{ ($scat->status == 'Not Active') ? 'selected' : '' }}>Not Active</option>
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