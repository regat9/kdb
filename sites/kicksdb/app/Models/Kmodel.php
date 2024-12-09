<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Kmodel extends Model
{
    use HasFactory;

    protected $guarded = false;

    public function kicks(): HasMany
    {
        return $this->hasMany(Kick::class);
    }

    public static function namesByIds($ids): Collection
    {
        $names = new Collection();

        foreach ($ids as $id) {
            $name = self::whereId($id)->first()->name;
            $names = $names->push($name);
        }

        return $names;
    }
}
