@extends('frontend.master')
@section('styles')
    {{ Html::style('css/fe.lienhe.css') }}
@stop
@section('scripts')
@stop
@section('slider')
@stop
@section('container')
    <div class="container">
        @include('frontend.lienhe.lienhe')
    </div>
@stop