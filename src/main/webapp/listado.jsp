<%@page import="ar.com.integrador.domain.Orador" %>
<%@page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
	<html lang="es">
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
			<link rel="stylesheet" href="css/styles.css">
			<link rel="shortcut icon" href="./assets/img/icon.png" type="image/x-icon">

			<title>Trabajo Final Integrador</title>

			<style>
				main{
					height: 100vh;
				}
			</style>
		</head>
		<body>
			<jsp:include page="header.jsp" />

			<main>
				<section>
					<form action="BuscarOradorTemaController" method="post" class="container-fluid mt-2">
						<input type="text" class="form-control" name="temabuscar" placeholder="Buscar por tema">
					</form>
				</section>

				<section class="container mt-5 mb-4" id="restoOradores">
					<h2 class="titulo-gral">Conoce todos los oradores que se presentan</h2>

					<div class="row">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Nombre</th>
									<th scope="col">Apellido</th>
									<th scope="col">Tema</th>
									<th scope="col">Fecha</th>
								</tr>
							</thead>
							<% //codigo java //obtener el listado desde el request //se guardo bajo el nombre de "listado"
							List<Orador> listado = (List<Orador>)request.getAttribute("listado");
							%>
							<tbody>
								<!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
								<% for( Orador unOrador : listado) { %>
								<tr>
									<th scope="row">
										<%=unOrador.getId()%>
									</th>
									<td>
										<%=unOrador.getNombre() %>
									</td>
									<td>
										<%=unOrador.getApellido() %>
									</td>
									<td>
										<%=unOrador.getTema() %>
									</td>
									<td>
										<%=unOrador.getFecha() %>
									</td>
								</tr>
								<% } %>
							</tbody>
						</table>
					</div>

				</section>
			</main>

			<jsp:include page="footer.jsp" />


			<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous"
    ></script>
		</body>
	</html>