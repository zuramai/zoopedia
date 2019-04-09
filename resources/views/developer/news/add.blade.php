@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Tambah Berita </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item"><a href="#">News</a></div>
              <div class="breadcrumb-item">Add</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		                <div class="card-header">
		                    <h4><span>Tambah Berita</span></h4>
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
                                <label>Tipe</label>
                                <select class="form-control" name="type">
                                  <option>Select one..</option>
                                  <option value="Service">Service</option>
                                  <option value="Info">Info</option>
                                  <option value="Update">Update</option>
                                  <option value="Maintenance">Maintenance</option>
                                </select>
                              </div>
                              <div class="form-group">
                                <label>Judul</label>
                                <input type="text" class="form-control" name="title">
                              </div>
                              <div class="form-group">
                                <label>Konten</label>
                                <textarea class="form-control" name="content"></textarea>
                              </div>
                              
                          </div>
                          <div class="card-footer text-right">
                            <button type="submit" class="btn btn-primary">Tambah</button>
                          </div>    
                        </form>
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>
@endsection