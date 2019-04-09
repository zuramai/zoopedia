@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card card-statistic-2">
                <div class="card-stats">
                  <div class="card-stats-title">
                    Statistik Order
                  </div>
                  <div class="card-stats-items">
                    <div class="card-stats-item">
                      <div class="card-stats-item-count">{{$pending}}</div>
                      <div class="card-stats-item-label">Pending</div>
                    </div>
                    <div class="card-stats-item">
                      <div class="card-stats-item-count">{{$processing}}</div>
                      <div class="card-stats-item-label">Processing</div>
                    </div>
                    <div class="card-stats-item">
                      <div class="card-stats-item-count">{{$success}}</div>
                      <div class="card-stats-item-label">Success</div>
                    </div>
                  </div>
                </div>
                <div class="card-icon shadow-primary bg-primary">
                  <i class="fas fa-archive"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Total Orders</h4>
                  </div>
                  <div class="card-body">
                    {{$total_order}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card card-statistic-2">
                <div class="card-chart">
                  <canvas id="balance-chart" height="80"></canvas>
                </div>
                <div class="card-icon shadow-primary bg-primary">
                  <i class="fas fa-dollar-sign"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Saldo</h4>
                  </div>
                  <div class="card-body">
                    Rp {{ number_format($user->balance)}}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="card card-statistic-2">
                <div class="card-chart">
                  <canvas id="sales-chart" height="80"></canvas>
                </div>
                <div class="card-icon shadow-primary bg-primary">
                  <i class="fas fa-shopping-bag"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Total Pembelian</h4>
                  </div>
                  <div class="card-body">
                    Rp {{ number_format($all) }}
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-8">
              <div class="card">
                <div class="card-header">
                  <h4>Statistik pembelian</h4>
                </div>
                <div class="card-body">
                  <canvas id="myChart" height="158"></canvas>
                </div>
              </div>
            </div> 
            <div class="col-lg-4">
              <div class="card gradient-bottom">
                <div class="card-header">
                  <h4>Informasi Akun</h4>
                </div>
                <div class="card-body" >
                
                  <div class="image d-flex justify-content-center flex-column align-items-center">
                    <img src="{{ asset('img/users/'.$user->photo) }}" class="img-setting" id="img-setting">
                  </div>
                  <div class="form mt-2">
                    <form>
                      <div class="form-group">
                        <label for="fullname"><i class="fas fa-user"></i> Nama</label>
                        <input type="text" id="fullname" class="form-control-plaintext" value="{{ $user->name }}">
                      </div>
                      <div class="form-group">
                        <label><i class="fas fa-level-up-alt "></i> Level</label>
                        <input type="text" name="email" class="form-control-plaintext" value="{{ $user->level }}" readonly="">
                      </div>
                      <div class="form-group">
                        <label><i class="fas fa-dollar-sign "></i> Sisa Saldo</label>
                        <input type="text" name="email" class="form-control-plaintext" value="{{ $user->balance }}" readonly="">
                      </div>
                      <div class="form-group">
                        <label><i class="fas fa-dollar-sign "></i> Sisa Saldo</label>
                        <input type="text" name="email" class="form-control-plaintext" value="{{ $user->balance }}" readonly="">
                      </div>
                    </form>
                     
                   </div>
                </div>
              </div>
            </div>
          </div>
        </section>
@endsection
