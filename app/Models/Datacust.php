<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Datacust extends Model
{
    use HasFactory;
    protected $table = 'datacusts';
    protected $fillable = ['status', 'timseo', 'timclosing','web','klien','notelp','harga','bayar','tanggal','tanggal_offseo','keterangan'];
    public $timestamps = true;

    public function user()
    {
       return $this->belongsTo(User::class, 'id');
    }
}
