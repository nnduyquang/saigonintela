<div id="gioi-thieu" class="col-md-12">
    <div class="container">
        <div class="col-md-6">
            @foreach($posts as $key=>$post)
                @if($post->name=='trangchu-contents-gt')
                    {!! $post->content !!}
                @endif
            @endforeach
        </div>
        <div class="col-md-6">
            {{ Html::image('images/temps/can-ho-saigon-intela.jpg','',array('class'=>'gt-img')) }}
        </div>
    </div>
</div>