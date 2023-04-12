<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class KickRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            'title' => 'required|min:2|string',
            'style_code' => 'nullable',
            'kmodel_id' => 'nullable',
            'description' => 'nullable',
            'release_date' => 'nullable',
            'brands'=> 'required|array',
            'collabrands'=> 'nullable|array',
            'designers' => 'nullable|array',
            'people'=> 'nullable|array',
            'images' => 'nullable|array',
            // 'is_published' => 'required',
        ];
    }
}
