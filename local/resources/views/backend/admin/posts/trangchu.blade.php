@extends('backend.admin.master')
@section('styles')
    {{--{{ Html::style('css/be.news.css') }}--}}
@stop
@section('scripts')
    {{ Html::script('js/ulti.js',array('async' => 'async') ) }}
    {{ Html::script('js/be.posts.trangchu.js',array('async' => 'async') ) }}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Bài Viết Trang Chủ</h2>
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
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
    {!! Form::open(array('route' => 'posts.trangchu.store','method'=>'POST')) !!}
    <div class="row">
        @foreach($posts as $key=>$post)
            @if($post->name=='trangchu-contents-km')
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Khuyến Mãi:</strong>
                        {!! Form::textarea('content-trangchu-km',$post->content, array('placeholder' => '','id'=>'content-trangchu-km','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
                        {{ Form::hidden('hd-content-trangchu-km', $post->content) }}
                    </div>
                </div>
            @endif
            @if($post->name=='trangchu-contents-gt')
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Giới Thiệu Dự Án:</strong>
                        {!! Form::textarea('content-trangchu-gt',$post->content, array('placeholder' => '','id'=>'content-trangchu-gt','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
                        {{ Form::hidden('hd-content-trangchu-gt', $post->content) }}
                    </div>
                </div>
            @endif
            @if($post->name=='trangchu-contents-vt')
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Vị Trí Dự Án:</strong>
                        {!! Form::textarea('content-trangchu-vt',$post->content, array('placeholder' => '','id'=>'content-trangchu-vt','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
                        {{ Form::hidden('hd-content-trangchu-vt', $post->content) }}
                    </div>
                </div>
            @endif
            @if($post->name=='trangchu-contents-lh')
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Liên Hệ:</strong>
                        {!! Form::textarea('content-trangchu-lh',$post->content, array('placeholder' => '','id'=>'content-trangchu-lh','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
                        {{ Form::hidden('hd-content-trangchu-lh', $post->content) }}
                    </div>
                </div>
            @endif
        @endforeach
        {{--<div class="col-xs-12 col-sm-12 col-md-12">--}}

        {{--<div class="form-group">--}}
        {{--<div class="form-inline">--}}
        {{--<span>Hình Đại Diện: </span>--}}
        {{--{!! Form::text('image', null, array('class' => 'form-control','id'=>'path')) !!}--}}
        {{--{!! Form::button('Browses', array('id' => 'btnBrowse','class'=>'btn btn-primary')) !!}--}}
        {{--</div>--}}
        {{--</div>--}}
        {{--</div>--}}
        {{--<div class="col-xs-12 col-sm-12 col-md-12">--}}
        {{--<div class="form-group">--}}
        {{--{{ Html::image('','',array('id'=>'showHinhDaiDien','class'=>'showHinh'))}}--}}
        {{--</div>--}}
        {{--</div>--}}

        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Bài Viết</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop