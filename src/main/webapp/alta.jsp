<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agenda - BNA</title>
</head>
<body>
	<jsp:useBean id="contacto" class="beans.Contacto" scope="request"/>
	<jsp:setProperty property="*" name="contacto"/>
	<jsp:forward page="AltaContacto"/>
</body>
</html>