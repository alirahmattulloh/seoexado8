@extends('layouts.adminpanel')

@section('menu')
<div class="page-header">
  <h3 class="page-title"> TAMBAH DATA AKTIF </h3>
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="#">Administrator</a></li>
      <li class="breadcrumb-item active" aria-current="page">Data Pelanggan</li>
    </ol>
  </nav>
</div>
<div class="row">
  <div class="col-lg-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-11 col-md-11 col-sm-11 grid-margin stretch-card">
            <h4 class="card-title">Isi form dibawah ini!</h4>
          </div>
          <div class="col-lg-1 col-md-1 col-sm-1 grid-margin stretch-card">
            <!-- Button trigger modal -->
            <a href="{!! ('/admin/datacust') !!}">
              <button type="button" class="btn btn-primary btn-sm">
                <i class="mdi mdi-keyboard-return"></i>
              </button>
            </a>
          </div>
          @if(session('success'))
          <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
          @endif
          @if ($errors->any())
          <div class="alert alert-danger">
            <ul>
              @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
              @endforeach
            </ul>
          </div>
          @endif
        </div>

        <form method="post" action="{{ route('datacust.store') }}">
          @csrf
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="status">STATUS</label>
                <select class="form-control" id="status" name="status" required>
                  <option value=""> -- PILIH STATUS --</option>
                  <option value="AKTIF">AKTIF</option>
                  <option value="GARANSI">GARANSI</option>
                  <option value="NONAKTIF">NONAKTIF</option>
                </select>
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="timseo">TIM SEO</label>
                <select class="form-control" id="timseo" name="timseo" required>
                  <option value=""> -- PILIH TIM SEO --</option>
                  @foreach ($timseos as $timseo)
                  <option value="{{ $timseo->username }}">{{ $timseo->username }}</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="timclosing">TIM CLOSING</label>
                <select class="form-control" id="timclosing" name="timclosing" required>
                  <option value=""> -- PILIH TIM CLOSING --</option>
                  @foreach ($timclosings as $timclosing)
                  <option value="{{ $timclosing->username }}">{{ $timclosing->username }}</option>
                  @endforeach
                </select>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="namaweb">NAMA WEB</label>
                <input type="text" class="form-control" name="web" id="web" placeholder="Masukan alamat web" required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="namaklien">NAMA KLIEN</label>
                <input type="text" class="form-control" name="klien" id="klien" placeholder="Masukan nama klien"
                  required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="notelp">NO. TELP</label>
                <input type="text" class="form-control" name="notelp" id="notelp" placeholder="628xxx" required />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="harga">HARGA LAYANAN</label>
                <input type="text" class="form-control" name="harga" id="harga" placeholder="Masukan harga layanan"
                  required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="bayar">PEMBAYARAN</label>
                <input type="text" class="form-control" name="bayar" id="bayar"
                  placeholder="Jumlah pembayaran yang sudah dilakukan" required />
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <div class="md-form md-outline input-with-post-icon datepicker">
                  <input placeholder="Select date" type="date" id="tanggal" name="tanggal" class="form-control"
                    required>
                  <label for="tanggal">TANGGAL TRANSAKSI</label>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="keterangan">KETERANGAN</label>
                <input type="text" class="form-control" name="keterangan" id="keterangan"
                  placeholder="Masukan nama klien" required />
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="form-group">
                <label for="bukti">BUKTI TRANSAKSI</label>
                <input type="text" class="form-control" name="bukti" id="bukti" readonly />
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-block btn-danger">Tambah data</button>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection
@push('scripts')
<script type="text/javascript">


</script>
@endpush