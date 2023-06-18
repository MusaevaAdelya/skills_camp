<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Личный кабинет</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;300;400;500;600;700;800&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="/vendor/bootstrap-icons-1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/profilee.css">
</head>
<body class="body-upanel min-vh-100 pb-5 pb-sm-5 pb-md-0">
<nav class="navbar bg-white py-3 mb-3">
    <div class="container">
        <div class="col-3">
            <a class="navbar-brand" href="#">
                Лого
            </a>
        </div>
        <div class="col d-flex  justify-content-end">
            <div class="text-end d-none d-md-none d-lg-block">
                <p class="m-0 p-0 fw-semibold welcome-text">Добро пожаловать!</p>
                <h5 class="m-0 p-0 nav-name">${user.firstName} ${user.lastName}</h5>
            </div>
        </div>
    </div>
</nav>
<div class="container-lg">
    <div class="row mb-5 px-3 d-flex min-h-100-minus-header">
        <nav class="navbar d-block d-sm-block d-md-block d-lg-none shadow-top fixed-bottom bg-white py-3">
            <div class="container justify-content-around">
                <a class="nav-link content-link d-flex active" aria-current="page" href="#personal_block">
                    <i class="bi bi-person-circle h1"></i>
                </a>
                <a class="nav-link content-link d-flex" aria-current="page" href="#payments">
                    <i class="bi bi-pencil-square h1"></i>
                </a>
                <a class="nav-link d-flex" aria-current="page" href="#">
                    <i class="bi bi-box-arrow-left h1"></i>
                </a>
            </div>
        </nav>
        <div class="col-3 d-none d-sm-none d-lg-block">
            <div class="panel-block p-4 ps-2 position-relative">
                <nav class="nav upanel-nav flex-column h-100">
                    <a class="nav-link content-link d-flex active" aria-current="page" href="#personal_block">
                        <i class="bi bi-person-circle"></i>
                        <span>Личный кабинет</span>
                    </a>
                    <a class="nav-link content-link d-flex" aria-current="page" href="#payments">
                        <i class="bi bi-pencil-square"></i>
                        <span>Настройки</span>
                    </a>
                    <a class="nav-link d-flex position-absolute bottom-0 mb-4" aria-current="page" href="/">
                        <i class="bi bi-box-arrow-left"></i>
                        <span>Выйти</span>
                    </a>
                </nav>
            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-9">
            <div id="payments" style="display: none" class="content-panel-block panel-block p-4 ">
                <div class="upanel-title-block">
                    <h2 class="upanel-title">Настройки</h2>
                    <hr class="hr-upanel mt-2">
                </div>
                <div class="upanel-content-block">
                    <form method="POST" action="/profile/edit" enctype="multipart/form-data"
                          modelAttribute="newProfileData">
                        <div class="mb-3">
                            <label for="profilePhotoInput" class="form-label">Фото профиля</label>
                            <input type="file" name="newAvatar" class="form-control" id="profilePhotoInput">
                        </div>
                        <div class="mb-3">
                            <label for="firstNameInput" class="form-label">Имя</label>
                            <input name="firstName" type="text" class="form-control" id="firstNameInput" placeholder="Имя">
                        </div>
                        <div class="mb-3">
                            <label for="lastNameInput" class="form-label">Фамилия</label>
                            <input name="lastName" type="text" class="form-control" id="lastNameInput" placeholder="Фамилия">
                        </div>
                   <div class="mb-3">
                            <label for="telegramInput" class="form-label">Телеграм</label>
                            <input name="telegram" type="text" class="form-control" id="telegramInput" placeholder="@username">
                        </div>
                        <div class="mb-3">
                            <label for="additionalInfoInput" class="form-label">Дополнительная информация</label>
                            <textarea name="about" class="form-control" id="additionalInfoInput" rows="3" placeholder='...'></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Сохранить</button>
<#--                        <button class="btn btn-outline-primary">Отмена</button>-->
                    </form>
                </div>
            </div>
            <div id="personal_block" class="content-panel-block panel-block p-4 ">
                <div class="upanel-title-block">
                    <h2 class="upanel-title">Личный Кабинет</h2>
                    <hr class="hr-upanel mt-2">
                </div>
                <div class="upanel-content-block">
                    <div class="row-info mt-4 d-flex justify-content-start">
                        <img src="${user.avatar} " class="profile-img rounded-circle" alt="">
                    </div>
                    <div class="row-info mt-4 d-flex justify-content-start">
                        <#if user.firstName??>
                            <span>
                            <label>Имя:</label>
                            <h4>${user.firstName} ${user.lastName}</h4>
                        </span>
                        </#if>

                    </div>
                    <div class="row-info mt-4 d-flex justify-content-start">
                        <span>
                            <label>Эл. Почта:</label>
                            <h4>${user.email}</h4>
                        </span>

                        <#if user.telegram??>
                            <span>
                            <label>Телеграм:</label>
                            <h4 class="telegram-link text-center rounded"><a href="https://t.me/${user.telegram}" class="text-decoration-none m-0"><i class="bi bi-telegram me-2"></i>${user.telegram}</a></h4>
                        </span>
                        </#if>

                    </div>
                    <#if user.about??>
                        <div class="row-info mt-4 d-flex justify-content-start">
                        <span>
                            <label>Доп. информация</label>
                            <h4>${user.about}</h4>
                        </span>
                        </div>
                    </#if>

                </div>
            </div>
        </div>
    </div>
</div>
<script src="/vendor/jquery-3.7.0.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/js/profilee.js"></script>
</body>
</html>