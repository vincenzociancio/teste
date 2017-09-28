$(document).ready(function () {
    //$.blockUI({
    //    message: $("#displayBox"),
    //    overlayCSS: {
    //        backgroundColor: '#fff',
    //        opacity: .7,
    //        color: '#fff'
    //    },
    //    css: {
    //        //width:'',
    //        width: '180px',
    //        height: '70px',
    //        //top: '50%',
    //        left: '',
    //        //right: '10px',
    //        border: 'none',
    //        padding: '5px',
    //        backgroundColor: '#fff',
    //        '-webkit-border-radius': '10px',
    //        '-moz-border-radius': '10px',
    //        opacity: .8,
    //        color: '#fff',
    //        top: ($(window).height() - 70) / 2 + 'px',
    //        left: ($(window).width() - 180) / 2 + 'px',
    //    },
    //    centerY: true,
    //    centerX: true
    //});
    //setTimeout($.unblockUI, 3000);
    
    //OK
    $('a:not(a.dropdown-toggle, a.btn.btn-navbar, a[href="#"]), input[type="button"], input[type="reset"], input[type="submit"], input[type="search"],input[type="file"], button').click(function (e) {

        $.blockUI({
            message: $("#displayBox"),
            overlayCSS: {
                backgroundColor: '#fff',
                opacity: .7,
                color: '#fff'
            },
            css: {
                //width:'',
                width: '180px',
                height: '70px',
                //top: '50%',
                left: '',
                //right: '10px',
                border: 'none',
                padding: '5px',
                backgroundColor: '#fff',
                '-webkit-border-radius': '10px',
                '-moz-border-radius': '10px',
                opacity: .8,
                color: '#fff',
                top: ($(window).height() - 70) / 2 + 'px',
                left: ($(window).width() - 180) / 2 + 'px',
            },
            centerY: true,
            centerX: true
        });

        //setTimeout(function () {
        //    var jqXHR = $.ajax({
        //        type: "POST",
        //        //url: $(this).href,
        //        cache: false,
        //        //data: params, // array of parameters
        //        async: false, // responseText is empty if set to true
        //        dataType: 'json',
        //        error: function () {
        //            alert("Ajax post request to the following script failed: " + url);
        //        },
        //        success: function () {
        //            //hide loading display here
        //            $.unblockUI();
        //        }
        //    });
        //}, 0);

        setTimeout($.unblockUI, 3500);
    });
});


//$('a:not(a.dropdown-toggle), input[type="button"], input[type="reset"], input[type="submit"], input[type="search"],input[type="file"], button').click(function () {
//    $.blockUI({
//        message: '<img src="./Content/images/carregando.gif" />',
//        overlayCSS: {
//            border: 'none',
//            padding: '15px',
//            height: '100%',
//            width: '100%',
//            //backgroundColor: '#aaaaaa',
//            backgroundColor: '#000',
//            '-webkit-border-radius': '10px',
//            '-moz-border-radius': '10px',
//            opacity: .5,
//            color: '#fff'
//        },
//        css: {
//            padding: '30px',
//            height: '80px',
//            top: ($(window).height() - 300) / 2 + 'px',
//            left: ($(window).width() - 300) / 2 + 'px',
//            width: '300px',
//            '-webkit-border-radius': '10px',
//            '-moz-border-radius': '10px',
//        }
//    });
//    setTimeout($.unblockUI, 1000);
//});


//<script type="text/javascript" language="javascript">
//$(document).ready(function() { 
//    $.blockUI({ css: { 
//        border: 'none', 
//        padding: '15px', 
//        backgroundColor: '#000', 
//        '-webkit-border-radius': '10px', 
//        '-moz-border-radius': '10px', 
//        opacity: .5, 
//        color: '#fff' 
//    } }); 
//    setTimeout($.unblockUI, 2000);
//    $('body').click(function() {
//        $.blockUI({ css: { 
//            border: 'none', 
//            padding: '15px', 
//            backgroundColor: '#000', 
//            '-webkit-border-radius': '10px', 
//            '-moz-border-radius': '10px', 
//            opacity: .5, 
//            color: '#fff' 
//        } });  
//        setTimeout($.unblockUI, 2000);
//    }); 
//}); 
//</script>



