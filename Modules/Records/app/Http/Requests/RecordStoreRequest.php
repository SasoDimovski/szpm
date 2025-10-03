<?php

namespace Modules\Records\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RecordStoreRequest extends FormRequest
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
     */
    public function rules(): array
    {
        $rules = [
            'id_association'=>'required',
            'title'=>'required',
        ];
        return $rules;
    }

    public function messages(): array
    {
        $messages= [
            'id_association.required' => __('global.required', ['name' => __('records.id_association')]),
            'title.required' => __('global.required', ['name' => __('records.title')]),
        ];
        return $messages;
    }

}
