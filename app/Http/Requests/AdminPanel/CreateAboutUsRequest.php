<?php

namespace App\Http\Requests\AdminPanel;

use App\Models\AboutUs;
use Illuminate\Foundation\Http\FormRequest;

class CreateAboutUsRequest extends FormRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return AboutUs::rules();
    }
}
