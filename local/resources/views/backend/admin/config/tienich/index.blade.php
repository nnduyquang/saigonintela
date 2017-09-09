@extends('backend.admin.master')
@section('styles')
    {{ Html::style('css/be.config.tienich.css') }}
@stop
@section('scripts')
    {{--{{ Html::script('js/be.config.slider.js',array('async' => 'async') ) }}--}}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Quản Lý Tiện Ích Dự Án</h2>
            </div>
            <div class="pull-right">
                @permission(('config-create'))
                <a class="btn btn-success" href="{{ route('config.tienich.create') }}">Thêm Tiện Ích</a>
                @endpermission
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    <table class="table table-bordered">
        <tr>
            <th>TT</th>
            <th>Hình Tiện Ích</th>
            <th>Nội Dung</th>
            <th>Sắp Xếp</th>
            <th>Ngày Tạo</th>
            <th>Ngày Cập Nhật</th>
            <th>Tình Trạng</th>
            <th width="280px">Action</th>
        </tr>
        @foreach ($tienichs as $key => $data)
            <tr>
                <td>{{ ++$i }}</td>
                <td>  {{ Html::image($data->tienich_image,'',array('id'=>'showTienIchImage','class'=>'showHinhTienIchIndex'))}}</td>
                <td>  {{ $data->tienich_content }}</td>
                <td>{{ $data->tienich_order }}</td>
                <td>{{ $data->created_at }}</td>
                <td>{{ $data->updated_at }}</td>
                <td>{{$data->tienich_is_active==1?'Đang Hiện':'Tạm Tắt'}}</td>
                <td>
                    @permission(('config-edit'))
                    <a class="btn btn-primary" href="{{ route('config.tienich.edit',$data->id) }}">Edit</a>
                    @endpermission
                    @permission(('config-delete'))
                    {!! Form::open(['method' => 'DELETE','route' => ['config.tienich.destroy', $data->id],'style'=>'display:inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                    {!! Form::close() !!}
                    @endpermission
                </td>
            </tr>
        @endforeach
    </table>
    {!! $tienichs->links() !!}
@stop