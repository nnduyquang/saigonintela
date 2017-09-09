@extends('backend.admin.master')
@section('styles')
    {{ Html::style('css/be.config.tienich.css') }}
    {{ Html::style('css/bootstrap-toggle.min.css') }}
@stop
@section('scripts')
    {{ Html::script('js/bootstrap-toggle.min.js',array('async' => 'async') ) }}
    {{ Html::script('js/ulti.js',array('async' => 'async') ) }}
    {{ Html::script('js/be.config.tienich.js',array('async' => 'async') ) }}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Cập Nhật Tiện Ích</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('config.tienich.index') }}"> Back</a>
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
    {!! Form::model($tienich,array('route' => ['config.tienich.update',$tienich->id],'method'=>'PATCH')) !!}
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <div class="form-inline">
                    <span>Hình Đại Diện Tiện Ích: </span>
                    {!! Form::text('tienich_image',  url('/').'/'.$tienich->tienich_image, array('class' => 'form-control','id'=>'path')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowseImageTienIch','class'=>'btn btn-primary')) !!}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    {{ Html::image($tienich->tienich_image,'',array('id'=>'showTienIchImage','class'=>'showHinhTienIch'))}}
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <strong>Tên Tiện Ích:</strong>
                {!! Form::text('tienich_content', null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <strong>Thứ tự:</strong>
                {!! Form::text('tienich_order', null, array('placeholder' => 'Thứ Tự','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Tình Trạng:</strong>
                <input {{$tienich->tienich_is_active==1?'checked':''}}  name="tienich_is_active" data-on="Đang Hiện" data-off="Tạm Tắt" type="checkbox"  data-toggle="toggle">
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Tiện Ích</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop
