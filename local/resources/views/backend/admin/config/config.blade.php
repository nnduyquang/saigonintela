@extends('backend.admin.master')
@section('scripts')
    {{ Html::script('js/be.config.js',array('async' => 'async') ) }}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Cấu Hình Chung Hệ Thống</h2>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Úi!</strong> Hình Như Có Gì Đó Sai Sai.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    {!! Form::open(array('route' => 'config.store','method'=>'POST')) !!}
    <div class="row">
        @foreach($cauhinhs as $key=>$cauhinh)
            @if($cauhinh->name=='cf-address-post')
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>Cấu Hình Địa Chỉ Tại Trang Con:</strong>
                        {!! Form::textarea('cf-address-post',$cauhinh->content, array('placeholder' => 'Nội Dung','id'=>'cf-address-post','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                        {{ Form::hidden('hd-cf-address-post', $cauhinh->content) }}
                    </div>
                </div>
            @endif
            @if($cauhinh->name=='cf-phone')
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>Điện Thoại Liên Hệ PKD:</strong>
                        {!! Form::text('cf-phone', $cauhinh->content, array('placeholder' => '','class' => 'form-control')) !!}
                        {{ Form::hidden('hd-cf-phone', $cauhinh->content) }}
                    </div>
                </div>
            @endif
        @endforeach
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Lưu Cấu Hình</button>
        </div>

    </div>
    {!! Form::close() !!}
@stop