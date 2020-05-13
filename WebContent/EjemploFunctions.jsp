<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="datos" value="Ana, Lopez, Directora, 75000"/>

<c:set var="datosArray" value="${fn:split(datos, ',')}"></c:set>

<input type="text" value="${datosArray[0]}"><br>
<input type="text" value="${datosArray[1]}"><br>
<input type="text" value="${datosArray[2]}"><br>
<input type="text" value="${datosArray[3]}">
</body>
</html>