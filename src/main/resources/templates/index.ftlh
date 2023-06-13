<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Главная</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg shadow bg-white d-block d-lg-none d-flex align-items-center p-3">

    <a class="navbar-brand" href="#">Logo</a>
    <div class="nav-slider py-4 d-flex flex-column justify-content-between">
        <div class="d-flex justify-content-between  align-items-center">
            <a class="navbar-brand" href="#">
                Logo
            </a>
            <button class="nav-close">
                <img src="/img/x.svg" alt="">
            </button>
        </div>
        <ul class="navbar-nav">
            <li class="nav-item mb-3">
                <a class="nav-link active px-0 py-1 " href="#">Главная</a>
            </li>
        </ul>
        <span class="navbar-text">
            <button class="btn btn-outline-primary" type="button" data-bs-toggle="modal" data-bs-target="#loginModal">Войти</button>
            <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#registerModal">Регистрация</button>
		</span>
    </div>
    <button class="navbar-toggler" type="button">
        <i class="bi bi-list"></i>
    </button>
    <div class="nav-mask"></div>
</nav>
<nav class="navbar navbar-expand-lg bg-white shadow d-none d-lg-block fixed-top z-indextop">
    <div class="container-fluid d-flex justify-content-between">
        <a class="navbar-brand" href="#">Logo</a>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link active px-0 py-1 mx-3" href="#">Главная</a>
            </li>
        </ul>
        <span class="navbar-text">
            <button class="btn btn-outline-primary" type="button" data-bs-toggle="modal" data-bs-target="#loginModal">Войти</button>
            <button class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#registerModal">Регистрация</button>
		</span>
        <span class="navbar-text">
            <a class="btn btn-outline-primary" type="button" href="/profile" >Личный кабинет</a>
            <form action="/logout" method="post" role="form">
                <button class="btn text-black fs-5 p-0 px-3" type="submit" ><i class="bi bi-box-arrow-right"></i></button>
            </form>

		</span>

    </div>
</nav>

<main>
    <div id="carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/slider_img.png" class="d-block w-100" alt="...">
                <div class="carousel-caption">
                    <h2>Мы лучшая<br>
                        компания</h2>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</main>
<footer class="footer">
    <div class="container d-flex justify-content-around flex-wrap p-3 manropefamily">
        <div class="col text-center">
            <p class="footer-text mx-3 my-3"><i class="bi bi-telephone mx-2 "></i>+996 (555) 555-555</p>
        </div>
        <div class="col text-center d-block d-md-none">
            <p class="footer-text mx-3 my-3"><i class="bi bi-whatsapp mx-2 "></i>+996 (555) 555-555</p>
        </div>
        <div class="col text-center d-none d-md-block">
            <p class="footer-text mx-3 my-3"><i class="bi bi-envelope mx-2 "></i>example@mail.com</p>
        </div>

    </div>
</footer>

<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="loginModalLabel">Вход в личный кабинет</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

            </div>
            <form>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="email-login" class="col-sm-2 col-form-label">Эл. почта</label>
                        <input id="email-login" class="form-control" placeholder="example@mail.com" type="text" name="email">
                    </div>
                    <div class="mb-3">
                        <label for="pass-login" class="col-sm-2 col-form-label">Почта</label>
                        <input id="pass-login" class="form-control" placeholder="Пароль" type="password" name="password">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
                    <button type="submit" class="btn btn-primary" name="login" value="Login">Войти</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="registerModalLabel">Регистрация</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form>
                <div class="modal-body">
                    <div class="row mb-3">
                        <div class="col-6">
                            <label for="name-register" class="col-sm-2 col-form-label">Имя</label>
                            <input id="name-register" class="form-control" placeholder="Имя" type="text" name="name">
                        </div>
                        <div class="col-6">
                            <label for="lastname-register" class="col-sm-2 col-form-label">Фамилия</label>
                            <input id="lastname-register" class="form-control" placeholder="Фамилия" type="text" name="lastname">
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="email-register" class="col-sm-2 col-form-label">Эл. почта</label>
                        <input id="email-register" class="form-control" placeholder="example@mail.com" type="text" name="email">
                    </div>
                    <div class="mb-3">
                        <label for="pass-register" class="col-sm-2 col-form-label">Почта</label>
                        <input id="pass-register" class="form-control" placeholder="Пароль" type="password" name="password">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Отмена</button>
                    <button type="submit" class="btn btn-primary" name="login" value="Login">Зарегистрироваться</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="/vendor/jquery-3.7.0.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/js/script.js"></script>
</body>
</html>