<?php

namespace App\Models;

use App\Models\Brand;
use App\Models\Traits\Filterable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;

class Kick extends Model
{
    use Filterable;

    protected $guarded = false;

    public function images()
    {
        return $this->hasMany(Image::class);
    }

    public function brands()
    {
        return $this->belongsToMany(Brand::class)->withPivot('brand_id');
    }

    public function kmodel()
    {
        return $this->belongsTo(Kmodel::class, 'kmodel_id', 'id');
    }

    public function collabrands()
    {
        return $this->belongsToMany(Collabrand::class);
    }

    public function colors()
    {
        return $this->belongsToMany(Color::class);
    }

    public function designers()
    {
        return $this->belongsToMany(Designer::class);
    }

    public function people()
    {
        return $this->belongsToMany(Person::class);
    }

    public function materials()
    {
        return $this->belongsToMany(Material::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }
}
