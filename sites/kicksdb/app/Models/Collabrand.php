<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
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
