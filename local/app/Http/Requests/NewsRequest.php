<?php

namespace App\Http\Requests;

use App\News;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Input;

class NewsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch ($this->method()) {
            case 'GET':
            case 'DELETE':
            case 'POST': {
                return [
                    'title' => 'required',
                    'content-news'=>'required'
                ];
            }
            case 'PUT':
            case 'PATCH': {
                return [
                    'title' => 'required',
                    'content-news'=>'required'
                ];
            }
        }
    }
    public function messages()
    {
        return [
            'title.required' => 'Tiêu Đề Không Để Trống',
            'content-news.required' => 'Mời Nhập Nội Dung Tin Tức',
        ];
    }
    public function withValidator($validator)
    {
        if ($this->method() == 'POST') {
            $validator->after(function ($validator) {
                if ($this->checkIfExistValue()) {
                    $validator->errors()->add('title', 'Tiêu Đề Đã Tồn Tại');
                }
            });
        }
    }

    public function checkIfExistValue()
    {
        $title = Input::get('title');
        $path = chuyen_chuoi_thanh_path($title);
        if (News::where('path', '=', $path)->exists()) {
            return 1 == 1;
        } else {
            return 0 == 1;
        }
    }
}
