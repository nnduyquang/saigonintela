<div id="p-d-tin-tuc" class="col-md-12">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                {{ Html::image('images/temps/duanthegoldview-quan4-833598db4e.jpg','',array('class'=>'p-d-content-img')) }}
            </div>
        </div>
        <div class="col-md-12">
            <div class="container">
                <div class="row">
                    <div class="p-d-w-title">
                        <h1 class="p-d-title">{{$news->title}}</h1>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="container">
                {!! $news->content !!}
            </div>
        </div>
        <div class="col-md-12 p-d-tintuc-bot">
            <div class="container">
                <div class="p-d-tintuc-bot-w">
                    {!! $diachi->content !!}
                </div>
            </div>
        </div>
    </div>
</div>
<div class="empty-space-32 col-md-12"></div>