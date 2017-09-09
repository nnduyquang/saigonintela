@extends('frontend.master')
@section('styles')
    {{ Html::style('css/fe.posts.thietke.css') }}
    {{ Html::style('css/fe.lienhe.css') }}
@stop
@section('scripts')
@stop
@section('slider')
@stop
@section('container')
    @include('frontend.thietke.content')
    @include('frontend.lienhe.lienhe')
@stop