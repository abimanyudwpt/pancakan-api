<?php

namespace App\Imports;

use App\Models\Keterangan;
use App\Models\Krama;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;

class KramaImport implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        if (!empty($row[18])) {
            $password = Hash::make($row[18]);
        } else {
            $password = $row[18];
        }

        $kramaImport = new Krama([
            'nik' => $row[0], //B
            'level' => $row[1], //C
            'no_kk' => $row[2], //D
            'nm' => $row[3], //E
            'tmpt' => $row[4], //F
            'tgl' => $row[5], //G
            'stts_dlm_klrg' => $row[6], //H
            'jbt' => $row[7], //I
            'bnjr_adt' => $row[8], //J
            'tmpkn' => $row[9], //K
            'stts' => $row[10], //L
            'pndd' => $row[11], //M
            'pkrjn' => $row[12], //N
            'jk' => $row[13], //O
            'ktrgn' => $row[14], //P
            'ft' => $row[15], //Q
            'nm_ddy' => $row[16], //R
            'nm_kt_ddy' => $row[17], //S
            'password' => $password //T
        ]);

        // dd($kramaImport);

        return $kramaImport;
    }
}
