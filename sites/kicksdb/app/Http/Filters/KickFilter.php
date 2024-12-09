<?php

namespace App\Http\Filters;

class KickFilter extends QueryFilter
{
    public function brand($id = null)
    {
        return $this->builder->when($id, function($query) use ($id){
            $query->whereIn('brand', $id);
        });
    }

    public function search_field($search_string = '')
    {
        return $this->builder
            ->where('title', 'LIKE', '%'.$search_string.'%')
            ->orWhere('description', 'LIKE', '%'.$search_string.'%');
    }
}
