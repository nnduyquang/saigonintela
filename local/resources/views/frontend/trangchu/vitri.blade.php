<div id="vi-tri" class="col-md-12">
    <div class="container">
        <div class="col-md-8">
            @foreach($posts as $key=>$post)
                @if($post->name=='trangchu-contents-vt')
                    {!! $post->content !!}
                @endif
            @endforeach
        </div>
        <div class="col-md-4">
            <ul>
                <li>Chưa đầy 5 phút đến trung tâm Quận 7</li>
                <li>Chỉ 08 phút đến khu đô thị Phú Mỹ Hưng</li>
                <li>Mất 15 phút đến Quận 4, Quận 1 và Quận 3</li>
                <li>Thuận tiện kết nối vùng và đi lại tại các khu vực tiếp giáp Sài Gòn.</li>
            </ul>
        </div>
    </div>
</div>