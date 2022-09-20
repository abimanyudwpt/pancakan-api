<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Presensi extends Model
{
    use HasFactory;
    protected $table = 'presensis';
    protected $primaryKey = 'id_presensi';
    protected $fillable = [
        'krama_id', 'id_kegiatan', 'tgl_absen', 'kehadiran',
    ];

    public function dataKrama()
    {
        return $this->belongsTo(Krama::class, 'krama_id');
    }

    public function dataKegiatan()
    {
        return $this->belongsTo(Kegiatan::class, 'id_kegiatan');
    }
    static function getKrama()
    {
        $return = DB::table('presensis')
            ->join('kramas', 'presensis.krama_id', '=', 'kramas.id');
    }
}