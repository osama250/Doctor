<?php

namespace App\Http\Requests\AdminPanel;

use App\Models\Category;
use Illuminate\Foundation\Http\FormRequest;

class UpdateCategoryRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        $rules = Category::rules();
        return $rules;
    }
}
