<?php

namespace App\Http\Controllers\API;

use App\Models\DataPenduduk;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DataPendudukController extends Controller
{
    public function getPenduduk($nik)
    {
        try {
            $penduduk = DataPenduduk::where('nik', $nik)->first();
            if ($penduduk) {
                return response()->json([
                    'status' => 'success',
                    'message' => 'Data penduduk ditemukan',
                    'data' => $penduduk,
                ]);
            } else {
                return response()->json([
                    'status' => 'error',
                    'message' => 'Data penduduk tidak ditemukan',
                ]);
            }
        } catch (\Exception $e) {
            return response()->json([
                'status' => $e->getCode(),
                'message' => $e->getMessage(),
            ]);
        }
    }
}
