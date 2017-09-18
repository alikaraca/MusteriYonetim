<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
div.w3-container{
height: 638px;
 background-image:url("kaynak/resimler/paper.jpg");
}
</style>
<head>
<title>Musteri Ekle</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<link rel="shortcut icon" href="<c:url value="/kaynak/icon/idc1.jpg"/>">
<link rel="stylesheet" href="<c:url value="/kaynak/css/musteriEkle.css"/>">
<link rel="stylesheet" href="<c:url value="/kaynak/bootstrap-3.3.7/css/bootstrap.min.css"/>">
<script src="<c:url value="/kaynak/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.min.js"/>"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<h2>Musteri Ekle</h2>
	<jsp:include page="../views/menu/menu1.jsp"></jsp:include>
	<div class="w3-container">
		<sf:form method="post" commandName="musteri">
		<div class="form-group" align="center">
			<label for="MusteriId">Müsteri Id</label> <br> 
			<input maxlength="11" type="text" class="form-control" id="MusteriId" name="MusteriId" required> <br> 
			<label for="MusteriAd">Müsteri Ad</label> <br> 
			<input type="text" class="form-control" id="MusteriAd" name="MusteriAd" required> <br> 
			<label for="MusteriSoyad">Müsteri Soyad</label><br> 
			<input type="text" class="form-control" id="MusteriSoyad" name="MusteriSoyad" required><br> 
			<label for="MusteriNo">Müsteri No</label> <br> 
			<input maxlength="11" type="text" class="form-control" id="MusteriNo" name="MusteriNo" required> <br> 
			<label for="MusteriAdres">Müsteri Adres</label> <br> 
			<input type="text" class="form-control" id="MusteriAdres" name="MusteriAdres" required> <br> 
			<label for="MusteriEmail">Müsteri E-mail</label> <br> 
			<input type="email" class="form-control"  id="MusteriEMail" name="MusteriEmail" required><br>
			<input type="submit" class="btn btn-success" name="ekle" value="Ekle">
			<c:if test="${param.error!=null }">
				<strong class="text-danger">Ekleme Basarisiz</strong>
			</c:if>
		</div>
	</sf:form>
	</div>
	
</body>
</html>