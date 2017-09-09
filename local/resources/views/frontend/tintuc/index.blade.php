@extends('frontend.master')
@section('styles')
    {{ Html::style('css/fe.tintuc.index.css') }}
    {{ Html::style('css/fe.lienhe.css') }}
@stop
@section('scripts')
@stop
@section('slider')
@stop
@section('container')
    @include('frontend.tintuc.content-i')
    @include('frontend.lienhe.lienhe')
    {{--@include('frontend.lienhe.lienhe')--}}
@stop