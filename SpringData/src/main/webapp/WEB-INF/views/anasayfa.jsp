<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Anasayfa</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<link rel="shortcut icon" href="<c:url value="/kaynak/icon/idc1.jpg"/>">
<link rel="stylesheet" href="<c:url value="/kaynak/bootstrap-3.3.7/css/bootstrap.min.css"/>">
<script src="<c:url value="/kaynak/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.min.js"/>"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<c:url value="/kaynak/css/giris.css"/>">
</head>
<style>
body {
	background-image: url("kaynak/resimler/welcome1.jpg");
	text-align: center;
}

</style>
<body>
	<jsp:include page="../views/menu/menu.jsp"></jsp:include>
</body>
</html>