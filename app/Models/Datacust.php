<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Datacust extends Model
{
    use HasFactory;
    protected $table = 'datacusts';
    protected $fillable = ['status', 'timseo', 'timclosing','web','klien','notelp','dp','harga','bayar','tanggal','tanggal_offseo','keterangan'];
    public $timestamps = true;
}