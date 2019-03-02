@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>Edit Layanan </h1>
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
                        <h4><span>Edit Layanan Layanan</span></h4>
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
                                <label>Nama Layanan</label>
                                <input type="text" placeholder="Nama layanan.." class="form-control" name="name" value="{{ $service->name }}">
                              </div>
                              <div class="form-group">
                                <label>Kategori</label>
                                <select class="form-control" name="category">
                                  <option value="">Choose one..</option>
                                  @foreach($category as $cat)
                                    <option value="{{ $cat->id }}" {{ $service->category_id == '$cat->id' ? 'selected' : '' }}>{{ $cat->name }}</option>
                                  @endforeach
                                </select>
                              </div>
                              <div class="form-group">
                                <label>Catatan</label>
                                <textarea class="form-control" name="note">{{ $service->note }}</textarea>
                              </div>
                              <div class="form-group">
                                <div class="row">
                                  <div class="col">
                                    <label>Min</label>
                                    <input type="number" name="min" class="form-control" value="{{ $service->min }}">
                                  </div>
                                  <div class="col">
                                    <label>Max</label>
                                    <input type="number" name="max" class="form-control" value="{{ $service->max }}">
                                  </div>
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="row">
                                  <div class="col">
                                    <label>Harga asli</label>
                                    <input type="number" name="price" class="form-control" value="{{ $service->price }}">
                                  </div>
                                  <div class="col">
                                    <label>Keuntungan</label>
                                    <input type="number" name="keuntungan" class="form-control" value="{{ $service->keuntungan }}">
                                  </div>
                                  <div class="col">
                                    <label>Harga khusus API</label>
                                    <input type="number" name="price_oper" class="form-control" value="{{ $service->price_oper }}">
                                  </div>
                                </div>
                              </div>
                              <div class="form-group">
                                <div class="row">
                                  <div class="col">
                                    <label>Provider id</label>
                                    <input type="number" name="pid" class="form-control" value="{{ $service->pid }}">
                                  </div>
                                  <div class="col">
                                    <label>Provider</label>
                                    <select class="form-control" name="provider">
                                      @foreach($provider as $prov)
                                        <option value="{{$prov->id}}" {{ $service->provider == '$prov->id' ? 'selected' : '' }}>{{$prov->name}}</option>
                                      @endforeach
                                    </select>
                                  </div>
                                </div>
                              </div>
                              
                              
                          </div>
                          <div class="card-footer text-right">
                            <button type="submit" class="btn btn-primary">Edit</button>
                          </div>    
                        </form>
                </div>
              </div>
            </div>
            
          </div>
        </section>
@endsection