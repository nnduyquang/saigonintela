@extends('backend.admin.master')
@section('styles')
    {{ Html::style('css/be.config.slider.css') }}
    {{ Html::style('css/bootstrap-toggle.min.css') }}
@stop
@section('scripts')
    {{ Html::script('js/bootstrap-toggle.min.js',array('async' => 'async') ) }}
    {{ Html::script('js/ulti.js',array('async' => 'async') ) }}
    {{ Html::script('js/be.config.slider.js',array('async' => 'async') ) }}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Cập Nhật Slider</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('config.slider.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::model($slider,array('route' => ['config.slider.update',$slider->id],'method'=>'PATCH')) !!}
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <div class="form-inline">
                    <span>Hình Slider: </span>
                    {!! Form::text('slider_image',  url('/').'/'.$slider->slider_image, array('class' => 'form-control','id'=>'path')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowseImageSlider','class'=>'btn btn-primary')) !!}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    {{ Html::image($slider->slider_image,'',array('id'=>'showSliderImage','class'=>'showHinh'))}}
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <strong>Thứ tự:</strong>
                {!! Form::text('slider_order', null, array('placeholder' => 'Thứ Tự','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Tình Trạng:</strong>
                <input {{$slider->slider_is_active==1?'checked':''}}  name="slider_is_active" data-on="Đang Hiện" data-off="Tạm Tắt" type="checkbox"  data-toggle="toggle">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Slider</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop
