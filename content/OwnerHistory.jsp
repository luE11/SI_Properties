<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SI Properties | Historial de pago</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>

<body>
    <div class="columns">
        <div class="column is-three-fifths is-offset-one-fifth">
            <div class="container has-text-centered my-5">
                <h1 class="title is-1">Historial de pago</h1>
            </div>
            <table class="table">
                <thead>
                  <tr>
                    <th>Id factura</th>
                    <th>Descripción pago factura</th>
                    <th>Periodo de pago</th>
                    <th>Cantidad pagada</th>
                    <th>Pago pendiente</th>                   
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>1</th>
                    <td>Pago renta mes</td>
                    <td>2020-2</td>
                    <td>1200000</td>
                    <td>0</td>
                  </tr>
                  </tr>
                </tbody>
            </table>
            <div class="container is-flex is-justify-content-center pt-5">
                <input type="button" onclick="" class="button is-success is-medium submit" value="Volver"></input>
            </div>       
        </div>
    </div>
</body>

</html>