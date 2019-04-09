@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Tambah Staff </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item"><a href="#">Staff</a></div>
              <div class="breadcrumb-item">Edit</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		                <div class="card-header">
		                    <h4><span>Ubah Staff</span></h4>
                        </div>
                        <form method="POST" action="" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
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
                                <label>Nama Lengkap</label>
                                <input type="text"  class="form-control" name="name" value="{{ $staff->name }}">
                              </div>
                              <div class="form-group">
                                <label>Nomor telepon</label>
                                <input type="text" class="form-control" name="phone" value="{{ $staff->phone }}">
                              </div>
                              <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" name="email" value="{{ $staff->email }}">
                              </div>
                              <div class="form-group">
                                <label>Level</label>
                                <select class="form-control" name="level">
                                  <option value="">Pilih salah satu</option>
                                  <option value="Member" {{ ($staff->level == 'Member') ? 'selected' : '' }}>Member</option>
                                    <option value="Agen" {{ ($staff->level == 'Agen') ? 'selected' : '' }}>Agen</option>
                                    <option value="Reseller" {{ ($staff->level == 'Reseller') ? 'selected' : '' }}>Reseller</option>
                                    <option value="Admin" {{ ($staff->level == 'Admin') ? 'selected' : '' }}>Admin</option>
                                    <option value="Developer" {{ ($staff->level == 'Developer') ? 'selected' : '' }}>Developer</option>
                                </select>
                              </div>
                              <div class="form-group">
                                <label>Nama Facebook <span class="text-muted">*Opsional</span></label>
                                <input type="text" class="form-control" name="fb_name" value="{{ $staff->facebook_name }}">
                              </div>
                              <div class="form-group">
                                <label>Link Facebook <span class="text-muted">*Opsional(wajib jika isi nama facebook)</span></label>
                                <input type="text" class="form-control" name="fb_link" value="{{ $staff->facebook_url }}">
                              </div>
                              <div class="form-group">
                                <label>Foto <span class="text-muted">*Wajib</span></label>
                                <input type="file" name="photo" class="form-control-file" value="{{ $staff->photo }}">
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