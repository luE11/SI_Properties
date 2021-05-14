<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>SI Properties | Generación de factura</title>

        <link rel="stylesheet" type="text/css" href="./css/bill.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
	</head>

	<body>
		<div class="invoice-box">
			<table cellpadding="0" cellspacing="0">
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title">
									<img src="./resources/company_logo.png" style="width: 100%; max-width: 300px" />
								</td>

								<td>
									Factura #: 123<br />
									Fecha de pago: Aquí fecha de pago<br />
									Estado de pago: estado_pago<br />
									Valor pendiente de pago: 0
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td>
									Nombre PH: Sparksuite, Inc.<br />
									Dirección PH: 12345 Sunny Road<br />
								</td>

								<td>
									Nombre dueño<br />
                                    Teléfono dueño: 1241542
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="heading">
					<td>Descripción cobro</td>

					<td>Valor</td>
				</tr>

				<tr class="item">
					<td>Website design</td>

					<td>$300.00</td>
				</tr>

				<tr class="total">
					<td>Total:</td>

					<td> $385.00</td>
				</tr>
			</table>
		</div>
		<div class="container is-flex is-justify-content-center">
			<input class="button is-primary" type="button" value="Volver a inicio" onclick="">
		</div>
	</body>
</html>