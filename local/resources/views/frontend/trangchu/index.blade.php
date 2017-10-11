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
    <div class="col-md-12 hidden-lg hidden-md">
        <div class="row">
            @include('frontend.slider.index')
        </div>
    </div>
    <div class="col-md-12 hidden-sm hidden-xs">
        <div class="row">
            @include('frontend.slider.slider2')
        </div>
    </div>
@stop
@section('container')
    <a class="img-fancy" data-fancybox="gallery" href="{{url('images/sliders/SMART-CITY-2.jpg')}}">
        {{ Html::image('images/sliders/SMART-CITY-2.jpg','',array('class'=>'show-once')) }}
    </a>
    @include('frontend.trangchu.khuyenmai')
    {{--@include('frontend.trangchu.thongtin')--}}
    @include('frontend.trangchu.thongtin2')
    @include('frontend.trangchu.thietke')
    {{--@include('frontend.trangchu.gioithieu')--}}
    @include('frontend.trangchu.gioithieu2')
    @include('frontend.trangchu.bando')
    {{--@include('frontend.trangchu.vitri')--}}
    @include('frontend.trangchu.vitri2')
    {{--@include('frontend.trangchu.tienich')--}}
    @include('frontend.trangchu.tienich2')
    @include('frontend.trangchu.lienhe')
    {{--@include('frontend.trangchu.tintuc')--}}
@stop