var plugins = {
    // owlCarousel: $("#slider"),
    menu: $('.sidebar'),
    slider1: $('#slider1'),
    lightgallery: $('#lightgallery'),
    bottomMenu: $('.bottom-menu'),
    btnSendMail: $('#btnSendMail'),
};
$(document).ready(function () {
    function sidebar() {
        var trigger = $('#trigger,#close');
        trigger.on('click', function () {
            $(this).toggleClass('active');
            plugins.menu.toggleClass('closed');
            $('#blurrMe').toggleClass('blurred')
        })
        $('#wrap-container').on('click', function () {
            if ($('#blurrMe').hasClass('blurred')) {

                $('#blurrMe').toggleClass('blurred')
                plugins.menu.toggleClass('closed');
            }
        })
    }

    function runSlider1() {
        plugins.slider1.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
        });
    }

    function runLightgallery() {
        plugins.lightgallery.lightGallery({
            mode: 'lg-fade',
            cssEasing: 'cubic-bezier(0.25, 0, 0.25, 1)',
            thumbnail: true
        });
    }

    function runScrollOnFix() {
        var wrap = plugins.bottomMenu;
        var logo1 = $('.img-logo-1');
        var logo2 = $('.img-logo-2');
        if (plugins.slider1.length) {
            $(window).on("scroll", function (e) {
                if ($(this).scrollTop() > 840) {
                    wrap.addClass("navbar-fixed-top");
                    // logo2.css('display', 'block');
                    logo1.css('display', 'none');
                    // setTimeout(function () {
                    //     logo2.addClass('move-down')
                    // }, 1);
                    // setTimeout(function () {
                    //     logo1.removeClass('move-up')
                    // }, 1);
                } else {
                    wrap.removeClass("navbar-fixed-top");
                    // logo2.css('display', 'none');
                    logo1.css('display', 'none');
                    // setTimeout(function () {
                    //     logo2.removeClass('move-down')
                    // }, 1);
                    // setTimeout(function () {
                    //     logo1.addClass('move-up')
                    // }, 1);
                }
            });
        } else {
            $(window).on("scroll", function (e) {
                if ($(this).scrollTop() > 50) {
                    wrap.addClass("navbar-fixed-top");
                    // logo2.css('display', 'block');
                    logo1.css('display', 'none');
                    // setTimeout(function () {
                    //     logo2.addClass('move-down')
                    // }, 1);
                    // setTimeout(function () {
                    //     logo1.removeClass('move-up')
                    // }, 1);
                } else {
                    wrap.removeClass("navbar-fixed-top");
                    // logo2.css('display', 'none');
                    logo1.css('display', 'none');
                    // setTimeout(function () {
                    //     logo2.removeClass('move-down')
                    // }, 1);
                    // setTimeout(function () {
                    //     logo1.addClass('move-up')
                    // }, 1);
                }
            });
        }
    }

    function getBaseURL() {
        var url = location.href;  // entire url including querystring - also: window.location.href;
        var baseURL = url.substring(0, url.indexOf('/', 14));
        if (baseURL.indexOf('http://localhost') != -1) {
            // Base Url for localhost
            var url = location.href;  // window.location.href;
            var pathname = location.pathname;  // window.location.pathname;
            var index1 = url.indexOf(pathname);
            var index2 = url.indexOf("/", index1 + 1);
            var baseLocalUrl = url.substr(0, index2);
            return baseLocalUrl + "/";
        }
        else {
            // Root Url for domain name
            return baseURL + "/";
        }

    }

    function sendMail() {
        $('.loadingSending').css('display', 'inline-block');
        $('.errorEmail').css('display', 'none');
        $('.errorName').css('display', 'none');
        $('.errorPhone').css('display', 'none');
        var data = new FormData($(this).get(0));
        data.append('name', $("input[name='lh_name']").val());
        data.append('email', $("input[name='lh_email']").val());
        data.append('phone', $("input[name='lh_phone']").val());
        data.append('address', $("input[name='lh_address']").val());
        data.append('description', $("textarea[name='lh_description']").val());
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            type: "POST",
            url: getBaseURL() + "sendmail",
            dataType: 'json',
            processData: false,
            contentType: false,
            data: data,
            success: function (data) {
                if (data.success) {
                    $('.loadingSending').css('display', 'none');
                    $('.successSending').css('display', 'inline-block');
                    $('.successSending').fadeIn(500);
                    setTimeout("$('.successSending').fadeOut(1500);", 3000);
                    $("input[name='lh_name']").val("");
                    $("input[name='lh_email']").val("");
                    $("input[name='lh_phone']").val("");
                    $("input[name='lh_address']").val("");
                    $("textarea[name='lh_description']").val("");
                }
                else {
                    alert('fail');
                }
            },
            error: function (data) {
                $('.loadingSending').css('display', 'none');
                var errors = $.parseJSON(data.responseText);
                if (errors.hasOwnProperty('email')) {
                    $('.errorEmail').css('display', 'inline-block');
                    $('.errorEmail').attr('data-original-title', errors['email']);
                    $('.errorEmail').tooltip('show');
                    setTimeout(function () {
                        $('.errorEmail').tooltip('hide');
                    }, 4000);
                }
                if (errors.hasOwnProperty('name')) {
                    $('.errorName').css('display', 'inline-block');
                    $('.errorName').attr('data-original-title', errors['name']);
                    $('.errorName').tooltip('show');
                    setTimeout(function () {
                        $('.errorName').tooltip('hide');
                    }, 4000);
                }
                if (errors.hasOwnProperty('phone')) {
                    $('.errorPhone').css('display', 'inline-block');
                    $('.errorPhone').attr('data-original-title', errors['phone']);
                    $('.errorPhone').tooltip('show');
                    setTimeout(function () {
                        $('.errorPhone').tooltip('hide');
                    }, 4000);
                }
            }
        });
    }

    function runFancyBox() {
        $('a.img-fancy').fancybox({
            'transitionIn': 'elastic',
            'transitionOut': 'elastic',
            'speedIn': 600,
            'speedOut': 200,
            'overlayShow': false,
             'width': 900,
            'height':600
        }).trigger('click');
    }

    if (window.screen.width >= 750) {
        runFancyBox();
    }


    sidebar();
    if (plugins.slider1.length) {
        runSlider1();
    }
    if (plugins.lightgallery.length) {
        runLightgallery();
    }
    if (plugins.bottomMenu.length) {
        runScrollOnFix();
    }
    if (plugins.btnSendMail.length) {
        $("[rel=popover]").tooltip();
        plugins.btnSendMail.click(function () {
            sendMail();
        });
    }
    $(".fancybox").fancybox({
        thumbs : {
            autoStart   : true,   // Display thumbnails on opening
            hideOnClose : true     // Hide thumbnail grid when closing animation starts
        },
    });
    $('.owl-carousel').owlCarousel({
        animateOut: 'fadeOutRight',
        animateIn: 'fadeInLeft',
        items: 4,
        smartSpeed: 450,
        margin: 20,
        nav:true,
        dots:false,
        responsive:{
            0: {
                items: 2
            },
            500: {
                items: 2
            },
            736: {
                items: 3
            },
            768: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    });
    $(".owl-nav .owl-prev").html("<img src='images/temps/red_back_btn.png' alt='Prev'/>");
    $(".owl-nav .owl-next").html("<img src='images/temps/red_next_btn.png' alt='Prev'/>");
    $('img[data-image=zoom]').click(function(){
        var src=$(this).attr('src');
        $('.img-tk-list').removeClass('shadow');
        $(this).addClass('shadow');
        $('.big-image').attr('src',src);
    });

});