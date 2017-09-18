<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body{
height: 638px;
 background-image:url("kaynak/resimler/paper.jpg");
}
.imgcontainer {
	text-align: center;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="<c:url value="/kaynak/icon/idc1.jpg"/>">
<title>Cikis Basarili</title>
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<script
	src="<c:url value="/kaynak/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.min.js"/>"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../views/menu/menu.jsp"></jsp:include>
	<h3>Logged Out</h3>
	<div class="imgcontainer">
		<img src="<c:url value="/kaynak/resimler/loggedout.jpg"/>" />
	</div>
</body>
</html>