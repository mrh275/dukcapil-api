<?php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class DataPenduduk extends Model
{
    use HasApiTokens, HasFactory;

    protected $guarded = ['id'];
}
