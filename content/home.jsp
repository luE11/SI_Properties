<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SI Properties | Inicio</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
</head>

<body>
	<c:if test='${role == null}'>
		<% response.sendRedirect(request.getContextPath()); %>
	</c:if>
	
    <section class="hero is-info is-fullheight">
        <div class="hero-head">
            <header class="navbar">
	            <div class="container">
	                <div id="navbarMenuHeroC" class="navbar-menu">
		                <div class="navbar-end">
			                <c:if test='${role.compareTo("admin")==0}'>
							    <a class="navbar-item" href="/SI_Properties/createResident.jsp">
		                        Crear Residente
			                    </a>
			                    <a class="navbar-item" href="/SI_Properties/selectResidentToUpdate.jsp">
			                        Actualizar Residente
			                    </a>
			                    <a class="navbar-item" href="/SI_Properties/selectResidentToGenerateBill.jsp">
			                        Generar recibo cobro
			                    </a>
			                    <a class="navbar-item" href="/SI_Properties/selectResidentToCharge.jsp">
			                        Cargar oblig. residen
			                    </a>
			                    <a class="navbar-item" href="/SI_Properties/selectOwnerToHistory.jsp">
			                        Historial Pago Residente
			                    </a>
			                    <a class="navbar-item" href="/SI_Properties/selectOwnerToStanding.jsp">
			                        Generar Paz y salvo propietario
			                    </a>
							</c:if>
		                    <span class="navbar-item">
			                    <a class="button is-info is-inverted" href="/SI_Properties/LoginServlet">
			                        <span class="icon">
			                        	<i class="fas fa-sign-out-alt"></i>
			                        </span>
			                        <span>Cerrar Sesión</span>
			                    </a>
		                    </span>
		                </div>
	                </div>
	            </div>
            </header>
        </div>

        <div class="hero-body">
            <div class="container has-text-centered">
            
	            <c:if test='${role.compareTo("admin")==0}'>
				    <p class="title">
	                	Panel de Administrador
	            	</p>
				</c:if>
	            <c:if test='${role.compareTo("owner")==0}'>
				    <p class="title">
	                	Panel de Propietario
	            	</p>
				</c:if>
				<p class="subtitle">
					Bienvenido <c:out value="${username}" default="Usuario"/>
				</p>
            </div>
        </div>
    
        <div class="hero-foot">
            <nav class="tabs is-boxed is-fullwidth">
                <div class="container">
                    <ul>
                    	<c:if test='${role.compareTo("owner")==0}'>
	                        <li><a href="#">Registrar Reservación</a></li>
	                        <li><a>Consulta espacio disp.</a></li>
	                        <li><a>Calcular valor reserv</a></li>
                        </c:if>
                        <c:if test='${role.compareTo("admin")==0}'>
                        	<li><a href="#">Registrar Reservación</a></li>
	                        <li><a>Consulta espacio disp.</a></li>
	                        <li><a>Calcular valor reserv</a></li>
						    <li><a>Calcular multa</a></li>
                        	<li><a>Cambiar estado cuenta</a></li>
						</c:if>
                    </ul>
                </div>
            </nav>
        </div>
    </section>
</body>

</html>