<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Collabrand extends Model
{
    use HasFactory;

    protected $guarded = false;

    public function kicks()
    {
        return $this->belongsToMany(Kick::class);
    }
}
