@extends('frontend.master')
@section('styles')
    {{--{{ Html::style('css/themes/default/default.css') }}--}}
    {{--{{ Html::style('css/trangchu.css') }}--}}
    {{--{{ Html::style('css/lightgallery.css') }}--}}
    {{ Html::style('css/fe.posts.vitri.css') }}
    {{ Html::style('css/fe.lienhe.css') }}
@stop
@section('scripts')
    {{--{{ Html::script('js/lightgallery.js') }}--}}
@stop
@section('slider')
    {{--@include('frontend.slider.index')--}}
@stop
@section('container')
    @include('frontend.vitri.content')
    @include('frontend.lienhe.lienhe')
@stop