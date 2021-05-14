<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SI Properties | Inicio de Sesión</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    <link rel="stylesheet" type="text/css" href="./css/login.css">
</head>

<body>
    <section class="hero is-info is-fullheight">
        <div class="hero-body">
            <div class="container has-text-centered">
                <div class="column is-4 is-offset-4 p-5 white-div">
                    <div>
                        <h3 class="title is-1 has-text-black">Inicio de sesión</h3>
                    </div>
                    
                    <hr class="login-hr">
                    <div>
                        <p class="title is-4 has-text-black">Inicia sesión para continuar</p>
                    </div>                  
                    <div class="box">
                        <span class="icon is-large">
                            <i class="fas fa-home fa-2x"></i>
                        </span>
                        <form action="LoginServlet" method="post">
                            <div class="field my-5">
                                <div class="control">
                                    <input class="input is-medium" type="text" name="username" placeholder="Ingrese su usuario" required>
                                </div>
                            </div>

                            <div class="field my-5">
                                <div class="control">
                                    <input class="input is-medium" type="password" name="password" placeholder="Ingrese su contraseña" required>
                                </div>
                            </div>
                            <button class="button is-block is-success is-large is-fullwidth" type="submit">Iniciar Sesión <i class="fas fa-sign-in-alt"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>