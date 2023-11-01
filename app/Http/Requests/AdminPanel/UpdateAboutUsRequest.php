<?php

namespace App\Http\Requests\AdminPanel;

use App\Models\AboutUs;
use Illuminate\Foundation\Http\FormRequest;

class UpdateAboutUsRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        $rules = AboutUs::rules();
        return $rules;
    }
}
