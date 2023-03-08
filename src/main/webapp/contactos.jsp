<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="modelo.AgendaContactos,beans.Contacto,java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<meta http-equiv="cache-control" content="max-age=0"/>
<meta http-equiv="cache-control" content="no-cache"/>
<meta http-equiv="expires" content="0"/>
<meta http-equiv="pragma" content="no-cache"/>


<title>Agenda - BNA</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
<!-- seccion header inicio -->
	<header class="bg-primary h-auto">
		<div class="d-flex justify-content-between align-items-center container">
			<div>
                <h1 class="text-white">Agenda 📲</h1>
            </div>
            <nav class="">
                <a class="text-white mr-3" href="#">Inicio</a>
                <a class="text-white mr-3" href="#">Nosotros</a>
                <a class="text-white mr-3" href="#">Contacto</a>
                <a class="text-white mr-3" href="#">Soporte</a>
            </nav>
		</div>
	</header>
	<!-- seccion header final -->
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Nombre</th>
					<th scope="col">Email</th>
					<th scope="col">Telefono</th>
				</tr>
			</thead>
			<tbody>
				<%AgendaContactos agenda = new AgendaContactos(); 
				List<Contacto> contactos = agenda.recuperarContactos();%>
				<%for(Contacto c:contactos){ %>
					<tr>
						<th scope="row"><%=c.getIdContacto()%></th>
						<td><%=c.getNombre() %></td>
						<td><%=c.getEmail() %></td>
						<td><%=c.getTelefono() %></td>
						<td><a href="EliminarContacto?idContacto=<%=c.getIdContacto()%>">Eliminar</a></td>
					</tr>
				<%}%>
			</tbody>
		</table>
		<a href="bienvenido.html">Volver al inicio</a>
	</div>
</body>
</html>