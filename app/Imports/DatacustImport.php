<?php

namespace App\Imports;

use App\Models\Datacust;
use Maatwebsite\Excel\Concerns\ToModel;

class DatacustImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Datacust([
            'id' => $row[0],
            'status' => $row[2], 
            'timseo' => $row[4],
            'timclosing' => $row[5],
            'web' => $row[6],
            'klien' => $row[7],
            'notelp' => $row[8],
            'harga' => $row[9],
            'bayar' => $row[10],
            'tanggal' => $row[11],
            'tanggal_offseo' => $row[12],
            'keterangan' => $row[13]
        ]);
    }
}
