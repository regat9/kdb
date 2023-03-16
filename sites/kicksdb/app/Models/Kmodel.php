<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Model;

class Kmodel extends Model
{
    use HasFactory;

    public function getKicks(): HasMany
    {
        return $this->hasMany(Kick::class);
    }
}
