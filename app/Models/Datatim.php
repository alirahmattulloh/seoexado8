<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Alfa6661\AutoNumber\AutoNumberTrait;

class Datatim extends Model
{
    use AutoNumberTrait;
    public function getAutoNumberOptions()
    {
        return [
            'users_kode' => [
                'format' => 'ADM?', // Format kode yang akan digunakan.
                'length' => 3 // Jumlah digit yang akan digunakan sebagai nomor urut
            ]
        ];
    }

    use HasFactory;
    protected $table = 'users';
    protected $fillable = ['id', 'nama', 'username', 'password', 'role_id'];
    public $timestamps = true;
}
