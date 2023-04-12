<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $guarded = false;

    public function kick()
    {
        return $this->belongsTo(Kick::class);
    }
}
