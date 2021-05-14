<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SI Properties | Cargar obligaciones a residente</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>

<body>
    <div class="columns">
        <div class="column is-4 is-offset-4">
            <div class="container has-text-centered my-5">
                <h1 class="title is-1">Cargar obligaciones a residente</h1>
            </div>
            <form>
                <div class="field">
                    <label class="label">Seleccione una propiedad</label>
                    <div class="select">
                    	<select name="properties" id="properties">
                        	<option value="0">Seleccione una propiedad</option>
                    	</select>
                    </div>
                </div>
                <div class="field">
                    <label class="label">Descripción del cobro</label>
                    <div class="control ">
                        <input class="input " type="text" placeholder="Descripción de cobro">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Valor a pagar</label>
                    <div class="control ">
                        <input class="input " type="number" placeholder="Valor a pagar">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Fecha límite</label>
                    <div class="control ">
                        <input class="input " type="date" placeholder="Fecha de pago">
                    </div>
                </div>               
                
                <div class="field is-grouped is-flex is-justify-content-center pt-5">
                    <p class="control">
                        <input type="submit" class="button is-primary is-medium submit" value="Cargar obligación"></input>
                    </p>
                    <p class="control">
                        <input type="button" onclick="" class="button is-danger is-medium submit" value="Cancelar"></input>
                    </p>
                </div>
            </form>            
        </div>
    </div>
    
</body>

</html>
