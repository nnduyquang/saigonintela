if ($('#email-sender-content').length) {
    CKEDITOR.replace('email-sender-content', {
        height: 200,
        language: 'vi',
        format_tags: 'p;h1;h2;h3;pre',
        filebrowserImageBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=images',
        filebrowserFlashBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=flash',
        filebrowserImageUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
        filebrowserFlashUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
    });
}
if ($('#email-signatures').length) {
    CKEDITOR.replace('email-signatures', {
        height: 200,
        language: 'vi',
        format_tags: 'p;h1;h2;h3;pre',
        filebrowserImageBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=images',
        filebrowserFlashBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=flash',
        filebrowserImageUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
        filebrowserFlashUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
    });
}

$('.alert-success').fadeIn(500);
setTimeout("$('.alert-success').fadeOut(1500);", 3000);
