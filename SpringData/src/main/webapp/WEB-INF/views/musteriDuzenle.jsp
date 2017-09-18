<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
div.w3-container{
height: 632px;
 background-image:url("kaynak/resimler/paper.jpg");
}
input[type=text], select {
	width: 85%;
	height: 70%;
	padding: 5px 12px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Musteri Düzenle</title>
<link rel="shortcut icon" href="<c:url value="/kaynak/icon/idc1.jpg"/>">
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/bootstrap.min.css"/>">
<script
	src="<c:url value="/kaynak/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.min.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<c:url value="/kaynak/css/musteri.css"/>">
</head>
<body>
	<jsp:include page="../views/menu/menu1.jsp"></jsp:include>
	<h1>Musteri Liste</h1>
	<div class="w3-container">
		<table class="w3-table w3-striped w3-border">
			<tr class=w3-red>
				<th>Müsteri Id</th>
				<th>Müsteri Adi</th>
				<th>Müsteri Soyad</th>
				<th>Müsteri No</th>
				<th>Müsteri Adres</th>
				<th>Müsteri E-mail</th>
				<th>Güncelle</th>
				<th>Sil</th>
			</tr>
			<c:forEach var="r" items="${musteri}">
				<sf:form method="post" commandName="musteri">
					<tr>
						<c:set var="mi" value="${r.musteriId}"></c:set>
						<td class="active"><input type="text" name="MusteriId" value="${mi }" /></td>
						<c:set var="ma" value="${r.musteriAd}"></c:set>
						<td class="active"><input type="text" name="MusteriAd" value="${ma }" /></td>
						<c:set var="ms" value="${r.musteriSoyad}"></c:set>
						<td class="active"><input type="text" name="MusteriSoyad" value="${ms }" /></td>
						<c:set var="mn" value="${r.musteriNo}"></c:set>
						<td class="active"><input type="text" name="MusteriNo" value="${mn}" /></td>
						<c:set var="madres" value="${r.musteriAdres}"></c:set>
						<td class="active"><input type="text" name="MusteriAdres" value="${madres }" /></td>
						<c:set var="mmail" value="${r.musteriEmail}"></c:set>
						<td class="active"><input type="text" name="MusteriEmail" value="${mmail}" /></td>
						<td class="active"><input class="btn btn-success" name="update" type="submit" value="Güncelle" /></td>
						<td class="active"><input class="btn btn-danger" name="delete" type="submit" value="Sil" /></td>
					</tr>
				</sf:form>
			</c:forEach>
		</table>
	</div>
</body>
</html>