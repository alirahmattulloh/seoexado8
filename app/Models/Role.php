<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    protected $guarded =['id'];
    protected $table = 'roles';
    protected $fillable = ['roles_kode', 'roles_name'];
    public $timestamps = true;

    public function users() {
        return $this->hasMany(User::class);
    }
}
