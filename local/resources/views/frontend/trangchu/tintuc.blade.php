<div id="tin-tuc" class="col-md-12">
    <div class="row">
        <div class="col-md-12 ttda-title">
            <div class="row">
                <h4>TIN MỚI DỰ ÁN TNR THE GOLDVIEW</h4>
            </div>
        </div>
        <div class="col-md-12">
            @foreach ($tintucs as $key => $data)
            <div class="col-md-3 ttda-wrap">
                <a href="tin-tuc/{{$data->path}}">
                    {{ Html::image($data->image,'',array('class'=>'ttda-img')) }}
                    <span>{{$data->title}}</span>
                </a>
            </div>
            @endforeach
            {{--<div class="col-md-3 ttda-wrap">--}}
                {{--<a href="">--}}
                    {{--{{ Html::image('images/temps/nhung-thuong-hieu-lam-nen-dang-cap-2-230x170.jpg','',array('class'=>'ttda-img')) }}--}}
                    {{--<span>Những thương hiệu làm nên đẳng cấp TNR THE GOLDVIEW</span>--}}
                {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-3 ttda-wrap">--}}
                {{--<a href="">--}}
                    {{--{{ Html::image('images/temps/nhung-thuong-hieu-lam-nen-dang-cap-2-230x170.jpg','',array('class'=>'ttda-img')) }}--}}
                    {{--<span>Những thương hiệu làm nên đẳng cấp TNR THE GOLDVIEW</span>--}}
                {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-3 ttda-wrap">--}}
                {{--<a href="">--}}
                    {{--{{ Html::image('images/temps/nhung-thuong-hieu-lam-nen-dang-cap-2-230x170.jpg','',array('class'=>'ttda-img')) }}--}}
                    {{--<span>Những thương hiệu làm nên đẳng cấp TNR THE GOLDVIEW</span>--}}
                {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-3 ttda-wrap">--}}
                {{--<a href="">--}}
                    {{--{{ Html::image('images/temps/nhung-thuong-hieu-lam-nen-dang-cap-2-230x170.jpg','',array('class'=>'ttda-img')) }}--}}
                    {{--<span>Những thương hiệu làm nên đẳng cấp TNR THE GOLDVIEW</span>--}}
                {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-3 ttda-wrap">--}}
                {{--<a href="">--}}
                    {{--{{ Html::image('images/temps/nhung-thuong-hieu-lam-nen-dang-cap-2-230x170.jpg','',array('class'=>'ttda-img')) }}--}}
                    {{--<span>Những thương hiệu làm nên đẳng cấp TNR THE GOLDVIEW</span>--}}
                {{--</a>--}}
            {{--</div>--}}
            {{--<div class="col-md-3 ttda-wrap">--}}
                {{--<a href="">--}}
                    {{--{{ Html::image('images/temps/nhung-thuong-hieu-lam-nen-dang-cap-2-230x170.jpg','',array('class'=>'ttda-img')) }}--}}
                    {{--<span>Những thương hiệu làm nên đẳng cấp TNR THE GOLDVIEW</span>--}}
                {{--</a>--}}
            {{--</div>--}}
        </div>
        <div class="col-md-12 tt-view-all">
            <a href="{{URL::to('tin-tuc')}}">Xem Tất Cả ></a>
        </div>
    </div>
</div>