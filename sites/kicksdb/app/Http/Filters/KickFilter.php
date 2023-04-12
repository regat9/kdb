<?php

namespace App\Http\Filters;

use Illuminate\Database\Eloquent\Builder;

class KickFilter extends AbstractFilter
{
    const BRAND = 'brand';
    const COLLABRAND = 'collabrand';
    const KMODEL = 'kmodel';
    const DESIGNER = 'designer';
    const PERSON = 'person';
    const CATEGORY = 'category';

    protected function getCallbacks(): array
    {
        return [
            self::BRAND => [$this, 'brand'],
            self::COLLABRAND => [$this, 'collabrand'],
            self::KMODEL => [$this, 'kmodel'],
            self::DESIGNER => [$this, 'designer'],
            self::PERSON => [$this, 'person'],
            self::CATEGORY => [$this, 'category'],
        ];
    }

    public function brand(Builder $builder, $value)
    {
        $builder->whereHas('brands', function($q) use ($value)
        {
            $q->whereIn('brand_id', explode(',', $value));
        });
    }

    public function collabrand(Builder $builder, $value)
    {
        $builder->whereHas('collabrands', function($q) use ($value)
        {
            $q->whereIn('collabrand_id', explode(',', $value));
        });
    }

    public function kmodel(Builder $builder, $value)
    {
        $builder->whereIn('kmodel_id', explode(',', $value));
    }

    public function designer(Builder $builder, $value)
    {
        $builder->whereHas('designer', function($q) use ($value)
        {
            $q->whereIn('designer_id', explode(',', $value));
        });
    }

    public function person(Builder $builder, $value)
    {
        $builder->whereHas('people', function($q) use ($value)
        {
            $q->whereIn('person_id', explode(',', $value));
        });
    }

    public function category(Builder $builder, $value)
    {
        $builder->whereIn('category_id', explode(',', $value));
    }
}
