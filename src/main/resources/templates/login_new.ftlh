<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Вход</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.min.css">
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>

<div id="toastContainer" class="toast-container position-fixed bottom-0 end-0 p-3">
    <div id="errorToast" class="toast align-items-center text-bg-danger border-0" role="alert" aria-live="assertive"
         aria-atomic="true">
        <div class="d-flex">
            <div class="toast-body">
                Неправильно введен пароль или почта.
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"
                    aria-label="Close"></button>
        </div>
    </div>
</div>
<h2>Вход в личный кабинет</h2>
<div class="container" id="container">
    <div class="form-container sign-up-container col-12 col-md-6">
        <form action="/register" method="post"  role="form" modelAttribute="registerForm">
            <h2>Создать аккаунт</h2>
            <div class="row w-100">
                <div class="col-6">
                    <input required name="firstName" type="text" class="rounded" placeholder="Имя"/>
                    <div class="invalid-feedback">
                        Введите правильно
                    </div>
                </div>
                <div class="col-6">
                    <input required name="lastName" type="text" class="rounded" placeholder="Фамилия"/>
                </div>
            </div>
            <div class="row w-100 mb-3">
                <div class="col-12">
                    <input required name="email" type="email" class="rounded" placeholder="Эл. почта"/>
                </div>
                <div class="col-12">
                    <input required minlength="3" name="password" type="password" class="rounded" placeholder="Пароль"/>
                </div>
                <div class="col-12">
                    <div class="g-recaptcha" data-sitekey="${captchaSettings.site}"></div>
                </div>
            </div>

            <button class="w-100 mb-3" type="submit">Зарегистрироваться</button>
            <button class="w-100" id="signIn2" type="button" >Войти</button>
        </form>
    </div>
    <div class="form-container sign-in-container col-12 col-md-6 ">
        <form action="/login" method="post" role="form" >
            <h2>Вход</h2>
            <input name="username" type="email" class="rounded" placeholder="Эл. почта"/>
            <input name="password" type="password" class="rounded" placeholder="Пароль"/>
            <a href="#">Забыли пароль?</a>
            <button class="w-100 mb-3" type="submit">Войти</button>
            <button class="w-100" id="signUp2" type="button">Зарегистрироваться</button>

        </form>
    </div>
    <div class="overlay-container d-none d-md-block">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h2 class="mb-4">Добро пожаловать!</h2>
                <button class="ghost" id="signIn">Войти</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h2 class="mb-4">Здравствуйте!</h2>
                <button class="ghost" id="signUp">Зарегистрироваться</button>
            </div>
        </div>
    </div>
</div>


<script src="/vendor/jquery-3.7.0.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });

    const signUpButton2 = document.getElementById('signUp2');
    const signInButton2 = document.getElementById('signIn2');

    signUpButton2.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton2.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });

    const toastLiveExample = document.getElementById('errorToast')
    const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastLiveExample, { delay: 5000 })

    <#if error??>
    <#if error>
    toastBootstrap.show()
    </#if>

    </#if>

</script>
</body>
</html>