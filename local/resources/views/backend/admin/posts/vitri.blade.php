@extends('backend.admin.master')
@section('styles')
    {{--{{ Html::style('css/be.news.css') }}--}}
@stop
@section('scripts')
    {{ Html::script('js/ulti.js',array('async' => 'async') ) }}
    {{ Html::script('js/be.posts.vitri.js',array('async' => 'async') ) }}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Bài Viết Vị Trí</h2>
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
    {!! Form::open(array('route' => 'posts.vitri.store','method'=>'POST')) !!}
    <div class="row">
        {{--<div class="col-md-12">--}}
        {{--<div class="form-group">--}}
        {{--<strong>Tiêu Đề:</strong>--}}
        {{--{!! Form::text('title', null, array('placeholder' => 'Tiêu Đề','class' => 'form-control')) !!}--}}
        {{--</div>--}}
        {{--</div>--}}
        @foreach($posts as $key=>$post)
            @if($post->name=='vitri-contents')
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Nội Dung:</strong>
                        {!! Form::textarea('content-vitri',$post->content, array('placeholder' => '','id'=>'content-vitri','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
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