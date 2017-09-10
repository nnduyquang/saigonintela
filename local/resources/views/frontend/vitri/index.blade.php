@extends('frontend.master')
@section('styles')
    {{ Html::style('css/fe.posts.css') }}
    {{ Html::style('css/fe.lienhe.css') }}
@stop
@section('scripts')
@stop
@section('slider')
@stop
@section('container')
    @include('frontend.vitri.content')
    @include('frontend.lienhe.lienhe')
@stop