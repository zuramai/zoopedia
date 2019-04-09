@extends('layouts.sidebar')

@section('content')
<section class="section">
          <div class="section-header">
            <h1>API Dokumentasi</h1>
            <div class="section-header-breadcrumb">
              <div class="breadcrumb-item"><a href="#">API Dokumentasi</a></div>
              
            </div>
          </div>

          <div class="section-body">
          
          	<div class="row">
          		<div class="col-md-12">
          			<div class="card">
		              <div class="card-header">
		                <h4><span>API Dokumentasi</span></h4>
		              </div>
		              <div class="card-body">
                        <div class="table table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <td>HTTP Method</td>
                                    <td>POST</td>
                                </tr>
                                <tr>
                                    <td>API URL</td>
                                    <td>{{ url('/api/pulsa') }}</td>
                                </tr>
                                @if(isset($user))
                                <tr>
                                    <td>API Key</td>
                                    <td>{{ $user->api_key }}</td>
                                </tr>
                                @endif
                                <tr>
                                    <td>Example Code</td>
                                    <td><a href="">PHP Example</a></td>
                                </tr>
                            </table>
                        </div>
                            <div class="section-api">
                                <div class="section-api-header">
                                    <h3>Get Service</h3>
                                </div>
                                <div class="section-api-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-md">    
                                      
                                                <tr>
                                                    <th>
                                                        Parameter
                                                    </th>
                                                    <th>
                                                        Deskripsi
                                                    </th>
                                                </tr>
                                            
                                                <tr>
                                                    <td>key</td>
                                                    <td>API Key anda</td>
                                                </tr>
                                           
                                                <tr>
                                                    <td>action</td>
                                                    <td>services</td>
                                                </tr>
                                            
                                        </table>
                                    </div>
                                    <div class="responses">
                                        <div class="response">
                                        <p>Success Response:</p>
                                            <pre class="prettyprint">
                                                {
                                                    success: true,
                                                    data: {
                                                        id: 1,
                                                        name: "Telkomsel 5000",
                                                        oprator: "Telkomsel",
                                                        category: "Pulsa All Operator",
                                                        price: 5250,
                                                        status: 'Active'
                                                    }
                                                }
                                            </pre>
                                        </div>
                                    <div class="responses">
                                        <div class="response">
                                            <p>Failed response:</p>
                                            <pre class="prettyprint">
                                                {
                                                    success: false,
                                                    error: "Wrong API Key"
                                                }
                                            </pre>
                                            
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="section-api">
                                <div class="section-api-header">
                                    <h3>Pemesanan Baru</h3>
                                </div>
                                <div class="section-api-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-md">    
                                      
                                                <tr>
                                                    <th>
                                                        Parameter
                                                    </th>
                                                    <th>
                                                        Deskripsi
                                                    </th>
                                                </tr>
                                            
                                                <tr>
                                                    <td>key</td>
                                                    <td>API Key anda</td>
                                                </tr>
                                           
                                                <tr>
                                                    <td>action</td>
                                                    <td>order</td>
                                                </tr>
                                           
                                                <tr>
                                                    <td>service</td>
                                                    <td>Id layanan, bisa dilihat di <a href="{{ url('price/pulsa') }}">Daftar layanan</a></td>
                                                </tr>
                                           
                                                <tr>
                                                    <td>target</td>
                                                    <td>Nomor telepon target.</td>
                                                </tr>
                                        </table>
                                    </div>
                                    <div class="responses">
                                        <div class="response">
                                        <p>Success Response:</p>
                                            <pre class="prettyprint">
                                                {
                                                    success: true,
                                                    data: {
                                                        id: 2413
                                                    }
                                                }
                                            </pre>
                                        </div>
                                    <div class="responses">
                                        <div class="response">
                                            <p>Failed response:</p>
                                            <pre class="prettyprint">
                                                {
                                                    success: false,
                                                    error: "Service not found"
                                                }
                                            </pre>
                                            
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="section-api">
                                <div class="section-api-header">
                                    <h3>Order status</h3>
                                </div>
                                <div class="section-api-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-md">    
                                      
                                                <tr>
                                                    <th>
                                                        Parameter
                                                    </th>
                                                    <th>
                                                        Deskripsi
                                                    </th>
                                                </tr>
                                            
                                                <tr>
                                                    <td>key</td>
                                                    <td>API Key anda</td>
                                                </tr>
                                           
                                                <tr>
                                                    <td>action</td>
                                                    <td>status</td>
                                                </tr>
                                           
                                                <tr>
                                                    <td>order_id</td>
                                                    <td>ID Pesanan</td>
                                                </tr>
                                            
                                        </table>
                                    </div>
                                    <div class="responses">
                                        <div class="response">
                                        <p>Success Response:</p>
                                            <pre class="prettyprint">
                                                {
                                                    success: true,
                                                    data: {
                                                        status: "Success",
                                                        sn: 3627263828191,
                                                    }
                                                }
                                            </pre>
                                        </div>
                                    <div class="responses">
                                        <div class="response">
                                            <p>Failed response:</p>
                                            <pre class="prettyprint">
                                                {
                                                    success: false,
                                                    error: "Order id tidak ditemukan"
                                                }
                                            </pre>
                                            
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
		              </div>
		            </div>
          		</div>
          	</div>
            
          </div>
        </section>
@endsection