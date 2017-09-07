@extends('frontend.master')
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
    {{ Html::style('css/trangchu.css') }}
    {{ Html::style('css/lightgallery.css') }}
@stop
@section('scripts')
{{ Html::script('js/lightgallery.js') }}
@stop
@section('slider')
    @include('frontend.slider.index')
@stop
@section('container')
    @include('frontend.trangchu.khuyenmai')
    @include('frontend.trangchu.thongtin')
    @include('frontend.trangchu.gioithieu')
    @include('frontend.trangchu.bando')
    @include('frontend.trangchu.vitri')
    @include('frontend.trangchu.tienich')
    @include('frontend.trangchu.lienhe')
    @include('frontend.trangchu.tintuc')
@stop