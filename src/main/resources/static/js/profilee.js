$(document).ready(function() {
    $(".content-link").click(function() {
        $(".content-panel-block").hide();
        $($(this).attr('href')).show();
        $(".content-link").removeClass('active');
        $('a[href="'+$(this).attr('href')+'"]').addClass('active');
    });
});