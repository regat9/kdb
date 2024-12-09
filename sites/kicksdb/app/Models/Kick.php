<?php

namespace App\Models;

use App\Http\Filters\QueryFilter;
use App\Models\Brand;
use App\Models\Traits\Filterable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Kick extends Model
{
    use Filterable, HasFactory;

    protected $guarded = false;

    public function images()
    {
        return $this->hasMany(Image::class);
    }

    public function brands()
    {
        return $this->belongsToMany(Brand::class)->withPivot('brand_id');
    }

    public function collabrands()
    {
        return $this->belongsToMany(Collabrand::class);
    }

    public function kmodel()
    {
        return $this->belongsTo(Kmodel::class, 'kmodel_id', 'id');
    }

    public function designers()
    {
        return $this->belongsToMany(Designer::class);
    }

    public function people()
    {
        return $this->belongsToMany(Person::class);
    }

    public function colors()
    {
        return $this->belongsToMany(Color::class);
    }

    public function materials()
    {
        return $this->belongsToMany(Material::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id', 'id');
    }

    public static function kicksByBrands(Collection $brands): Collection
    {
        $kicks = new Collection();

        foreach ($brands as $brand) {
            $kicks = $kicks->merge($brand->kicks);
        }

        return $kicks;
    }

    public static function kicksByCollabrands(Collection $collabrands): Collection
    {
        $kicks = new Collection();

        foreach ($collabrands as $collabrand) {
            $kicks = $kicks->merge($collabrand->kicks);
        }

        return $kicks;
    }

    public static function kicksByPeople(Collection $people): Collection
    {
        $kicks = new Collection();

        foreach ($people as $person) {
            $kicks = $kicks->merge($person->kicks);
        }

        return $kicks;
    }

    public static function kicksByDesigners(Collection $designers): Collection
    {
        $kicks = new Collection();

        foreach ($designers as $designer) {
            $kicks = $kicks->merge($designer->kicks);
        }

        return $kicks;
    }

    public static function kicksByModels(Collection $models): Collection
    {
        $kicks = new Collection();

        foreach ($models as $model) {
            $kicks = $kicks->merge($model->kicks);
        }

        return $kicks;
    }

    public function scopeFilter(Builder $builder, QueryFilter $filter)
    {
        return $filter->apply($builder);
    }
}
