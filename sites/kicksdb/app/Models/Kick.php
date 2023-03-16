<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kick extends Model
{
    use HasFactory;

    public function getImages()
    {
        return $this->hasMany(Image::class);
    }

    public function getBrands()
    {
        return $this->belongsToMany(Brand::class);
    }

    public function getKmodel()
    {
        return $this->belongsTo(Kmodel::class, 'kmodel_id', 'id');
    }

    public function getCollabrands()
    {
        return $this->belongsToMany(Collabrand::class);
    }

    public function getColors()
    {
        return $this->belongsToMany(Color::class);
    }

    public function getDesigners()
    {
        return $this->belongsToMany(Designer::class);
    }

    public function getPeople()
    {
        return $this->belongsToMany(Person::class);
    }

    public function getMaterials()
    {
        return $this->belongsToMany(Material::class);
    }

    public function getCategory()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }
}
