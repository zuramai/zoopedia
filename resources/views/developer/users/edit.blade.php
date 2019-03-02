@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Tambah Layanan </h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
              <div class="breadcrumb-item"><a href="#">Developer</a></div>
              <div class="breadcrumb-item"><a href="#">Users</a></div>
              <div class="breadcrumb-item">Add</div>
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		                <div class="card-header">
		                    <h4><span>Tambah Pengguna</span></h4>
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
                                <label>Nama</label>
                                <input type="text"  class="form-control" name="name" value="{{$user->name}}">
                              </div>
                              <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" value="{{$user->email}}">
                              </div>
                              <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name='password' value="{{$user->password}}">
                              </div>
                              <div class="form-group">
                                <label>Balance</label>
                                <input type="number" class="form-control" value="0" name='balance' value="{{$user->balance}}">
                              </div>
                              <div class="form-group">
                                <label for="">Level</label>
                                <select name="level" id="" class="form-control">
                                    <option value="Member" {{ ($user->level == 'Member') ? 'selected' : '' }}>Member</option>
                                    <option value="Agen" {{ ($user->level == 'Agen') ? 'selected' : '' }}>Agen</option>
                                    <option value="Reseller" {{ ($user->level == 'Reseller') ? 'selected' : '' }}>Reseller</option>
                                    <option value="Admin" {{ ($user->level == 'Admin') ? 'selected' : '' }}>Admin</option>
                                </select>
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