@extends('frontend.master')
@section('styles')
    {{ Html::style('css/fe.posts.canho.css') }}
    {{ Html::style('css/fe.lienhe.css') }}
@stop
@section('scripts')
@stop
@section('slider')
@stop
@section('container')
    @include('frontend.canho.content')
    @include('frontend.lienhe.lienhe')
@stop