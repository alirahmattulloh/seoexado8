<?php

namespace App\Exports;

use App\Models\Datacust;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\Exportable;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use Maatwebsite\Excel\Concerns\WithColumnFormatting;

class DatacustExport implements FromQuery, WithColumnFormatting, WithHeadings, WithMapping, ShouldAutoSize, WithEvents
{
    /**
     * @return \Illuminate\Support\Collection
     */

     use Exportable;

    public function __construct(string $status, string $tanggal)
    {
        $this->status = $status;
        $this->tanggal = $tanggal;
    }

    public function query()
    {
        return Datacust::query()->where('status', '=', $this->status)->where('tanggal', 'like', "%" . $this->tanggal . "%");
    }

    public function columnFormats(): array
    {
        return [
            'G' => NumberFormat::FORMAT_NUMBER,
            'H' => NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED2,
            'I' => NumberFormat::FORMAT_NUMBER_COMMA_SEPARATED2,
            'J' => NumberFormat::FORMAT_DATE_DDMMYYYY,
        ];
    }

    public function map($datacust): array
    {
        //Return a normal data row
        return [
            $datacust->id,
            $datacust->status,
            $datacust->timseo,
            $datacust->timclosing,
            $datacust->web,
            $datacust->klien,
            $datacust->notelp,
            $datacust->harga,
            $datacust->bayar,
            $datacust->tanggal,
            $datacust->keterangan,
        ];
    }

    public function headings(): array
    {
        return [
            'ID',
            'STATUS',
            'TIM SEO',
            'TIM CLOSING',
            'DOMAIN WEB',
            'NAMA KLIEN',
            'NO TELP',
            'HARGA',
            'PEMBAYARAN',
            'TANGGAL',
            'KETERANGAN',

        ];
    }

    public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function (AfterSheet $event) {
                $cellRange = 'A1:K1'; // All headers
                $styleArray = [
                    'font' => [
                        'name'      =>  'Calibri',
                        'size'      =>  11,
                        'bold'      =>  true,
                        'color' => ['argb' => 'FFFFFF'],
                    ],
                    //Set background style
                    'fill' => [
                        'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                        'startColor' => [
                            'rgb' => '081775',
                        ]
                    ],
                ];
                $total = Datacust::select()->where('status', '=', $this->status)->where('tanggal', 'like', "%" . $this->tanggal . "%")->sum('bayar');
                $jml = Datacust::select()->where('status', '=', $this->status)->where('tanggal', 'like', "%" . $this->tanggal . "%")->count();
                $event->sheet->appendRows(array(
                    array('Total', $jml, '', '', '', '', '', '', $total),
                    //....
                ), $event);
                $event->sheet->getDelegate()->getStyle($cellRange)->applyFromArray($styleArray);
            },
        ];
    }
}
