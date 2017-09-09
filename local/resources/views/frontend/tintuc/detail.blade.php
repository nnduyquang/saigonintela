@extends('frontend.master')
@section('styles')
    {{ Html::style('css/fe.tintuc.detail.css') }}
    {{ Html::style('css/fe.lienhe.css') }}
@stop
@section('scripts')
@stop
@section('slider')
@stop
@section('container')
    @include('frontend.tintuc.content-d')
    @include('frontend.lienhe.lienhe')
@stop