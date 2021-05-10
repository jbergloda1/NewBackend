<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return $this->storeRules();
    }
    public function storeRules(): array
    {
        return [
            'email'             => 'required|email|min:0|max:50|unique:customer',
            'password'          => 'required|min:5|max:30',
            'confirmpassword'   => 'required|same:password',
        ];
    }
    public function storeFilter()
    {
        return $this->only([
            'email',
            'password'
        ]);
    }
}
