@extends('frontend.master')
@section('styles')
    {{ Html::style('css/themes/default/default.css') }}
    {{ Html::style('css/trangchu.css') }}
@stop
@section('slider')
    @include('frontend.slider.index')
@stop
@section('container')
    @include('frontend.trangchu.khuyenmai')
    @include('frontend.trangchu.thongtin')
@stop