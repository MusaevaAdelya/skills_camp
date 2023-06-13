<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
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
</head>
<body>



<h2>Вход в личный кабинет</h2>
<div class="container" id="container">
  <div class="form-container sign-up-container">
    <form action="/register" method="post"  role="form" modelAttribute="registerForm">
      <h2>Создать аккаунт</h2>
      <div class="row">
        <div class="col-6"><input name="firstName" type="text" class="rounded" placeholder="Имя" /></div>
        <div class="col-6"><input name="lastName" type="text" class="rounded" placeholder="Фамилия" /></div>
      </div>
      <input name="email" type="email" class="rounded" placeholder="Эл. почта" />
      <input name="password" type="password" class="rounded" placeholder="Пароль" />
      <button type="submit">Зарегистрироваться</button>
    </form>
  </div>
  <div class="form-container sign-in-container">
    <form action="/login" method="post" role="form" >
      <h2>Вход</h2>
      <input name="username" type="email" class="rounded" placeholder="Эл. почта" />
      <input name="password" type="password" class="rounded" placeholder="Пароль" />
      <a href="#">Забыли пароль?</a>
      <button type="submit">Войти</button>
    </form>
  </div>
  <div class="overlay-container">
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





<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/js/login.js"></script>
</body>
</html>