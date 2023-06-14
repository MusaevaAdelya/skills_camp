$(function() {
    function close() {
        $('body').removeClass('has-active-menu');
        setTimeout(function(){
            $('.nav-slider').removeClass('toggling');
        }, 500);
    }

    function open() {
        $('body').addClass('has-active-menu');
        $('.nav-slider').addClass('toggling');
    }

    $('.nav-close').click(close);
    $('.navbar-toggler').click(open);
});

function togglePasswordVisibility(inputId) {
    const inputField = document.getElementById(inputId);
    const icon = inputField.nextElementSibling;

    if (inputField.type === 'password') {
        inputField.type = 'text';
        icon.classList.add("bi-eye-slash");
        icon.classList.remove("bi-eye");// Change the icon to an eye-open icon
    } else {
        inputField.type = 'password';
        icon.classList.remove("bi-eye-slash");
        icon.classList.add("bi-eye");// Change the icon back to an eye-closed icon
    }
}