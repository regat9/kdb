<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Model;

class Kmodel extends Model
{
    protected $guarded = false;

    public function kicks(): HasMany
    {
        return $this->hasMany(Kick::class);
    }
}
