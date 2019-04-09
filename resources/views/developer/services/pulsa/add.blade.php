@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Tambah Layanan </h1>
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
		                    <h4><span>Tambah Layanan Layanan</span></h4>
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
                                <label>Kategori</label>
                                <select name="category" class="form-control">
                                  <option>Pilih kategori..</option>
                                  @foreach($category as $cat)
                                  <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label>Operator</label>
                                <select class="form-control" name="oprator">
                                  <option value="">Choose one..</option>
                                  @foreach($operator as $oprator)
                                    <option value="{{ $oprator->id }}">{{ $oprator->name }}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label>Nama Layanan</label>
                                <input type="text" placeholder="Nama layanan.." class="form-control" name="name">
                              </div>
                              <div class="form-group">
                                <label>Price</label>
                                <input type="number" name="price" class="form-control" placeholder="Harga layanan..">
                              </div>
                              <div class="form-group">
                                <label>Code / Provider ID</label>
                                <input type="text" name="code" class="form-control" placeholder="Masukkan kode/id layanan dari provider" class="form-control">
                              </div>
                              <div class="form-group">
                                <label>Provider</label>
                                <select class="form-control" name="provider">
                                  <option>Pilih provider..</option>
                                  @foreach($provider as $prov) 
                                  <option value="{{$prov->id}}">{{ $prov->name }}</option>
                                  @endforeach
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