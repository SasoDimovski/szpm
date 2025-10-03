<?php

namespace Modules\Associations\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AssociationsUpdateRequest extends FormRequest
{

    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {

        return [
            'name' => 'required',
            'phone' => 'required',
        ];
    }

    public function messages(): array
    {
        return [
            'name.required' => __('global.required', ['name' => __('associations.title')]),
            'phone.required' => __('global.required', ['name' => __('associations.phone')]),
        ];
    }

}
