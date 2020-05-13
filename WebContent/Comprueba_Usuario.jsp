<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	Class.forName("com.mysql.cj.jdbc.Driver");
	try {
		Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");
		PreparedStatement c_preparada = miConexion
		.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
		c_preparada.setString(1, usuario);
		c_preparada.setString(2, contra);
		ResultSet miResultSet = c_preparada.executeQuery();
		if (miResultSet.absolute(1))
			out.println("Usuario autorizado");
		else
			out.println("No hay usuarios con esos datos");
	} catch (Exception e) {
		out.println("Ha habido un error");
	}
	%>

</body>
</html>