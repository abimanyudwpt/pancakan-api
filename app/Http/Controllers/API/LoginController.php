<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Krama;
use App\Models\PrajuruAdat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'nik'       => 'required|numeric|min:16',
            'password'  => 'required',
            // 'device_name' => 'required'
        ]);
        $user = PrajuruAdat::where('nik', $request->nik)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'success' => false,
                'message' => 'Unauthorized',
            ], 401);
        }
        $user->tokens()->delete();
        $token = $user->createToken('token_auth')->plainTextToken;
        return response()->json([
            'success' => true,
            'message' => 'success',
            'user' => $user,
            'token' => $token
        ]);
    }
    public function logout(Request $request)
    {
        $user = $request->user();
        $user->currentAccessToken()->delete();
        $respon = [
            'msg' => 'Logout Successfully',
        ];
        return response()->json($respon, 200);
    }
}