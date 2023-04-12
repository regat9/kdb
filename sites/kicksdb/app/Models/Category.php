<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $guarded = false;

    public function kicks()
    {
        return $this->hasMany(Kick::class);
    }
}
