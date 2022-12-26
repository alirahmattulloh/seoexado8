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
            'dp' => $row[9],
            'harga' => $row[10],
            'bayar' => $row[11],
            'tanggal' => $row[12],
            'tanggal_offseo' => $row[13],
            'keterangan' => $row[14],
        ]);
    }
}
