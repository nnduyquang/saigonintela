<div id="p-tin-tuc" class="col-md-12">
    <div class="container">
        <div class="p-tintuc-headline">
            <h1>Tin Tức</h1>
        </div>
        <div class="p-tintuc-intro">
            <p>SAIGON INTELA được hoàn thiện và đảm bảo chất lượng cao nhất với hệ thống an ninh bảo mật, các thiết
                bị bảo vệ hiện đại, và bạn cũng sẽ vô cùng hài lòng với hệ thống khu vui chơi, giải trí như: hồ bơi,
                trung tâm thương mại, phòng sinh hoạt cộng đồng, phòng tập Gym – yoga, vườn treo xanh …</p>
        </div>
        @foreach($news as $key =>$data)
            <div class="p-tintuc-post col-md-12">
                <div class="col-md-3">
                    <div class="row">
                        <a href="tin-tuc/{{$data->path}}">{{ Html::image($data->image,'',array('class'=>'p-tintuc-post-img')) }}</a>
                    </div>
                </div>
                <div class="col-md-9">
                    <a href="tin-tuc/{{$data->path}}"><p class="p-tintuc-post-title">{{$data->title}}</p>
                    </a>
                    <p class="p-tintuc-post-content">{{$data->content}}</p>
                </div>
            </div>
        @endforeach
        <div class="empty-space-32 col-md-12"></div>
        <div class="col-md-12 p-tintuc-post-bot">
            <div class="container">
                <div class="p-tintuc-post-bot-w">
                    {!! $diachi->content !!}
                </div>
            </div>
        </div>
    </div>
</div>