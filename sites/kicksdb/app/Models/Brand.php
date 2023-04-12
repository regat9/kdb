<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $guarded = false;

    public function kicks()
    {
        return $this->belongsToMany(Kick::class);
    }
}
