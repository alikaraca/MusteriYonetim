<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
button[name=admin]{
    position: absolute;
    left:500px;
    top:100px;
}
div.w3-container{
height: 638px;
 background-image:url("kaynak/resimler/paper.jpg");
}
button[name=ekle]{
   position: absolute;
   left: 200px;
   top: 250px;
}
button[name=liste]{
   position: absolute;
   left: 530px;
   top: 250px;
}
button[name=duzen]{
   position: absolute;
   left: 860px;
   top: 250px;
}
</style>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="shortcut icon" href="<c:url value="/kaynak/icon/idc1.jpg"/>">
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/bootstrap.min.css"/>">
<script
	src="<c:url value="/kaynak/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.min.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Yonetici Sayfasi</title>
</head>
<body>
<h2>Musteri Ekle</h2>
	<jsp:include page="../views/menu/menu1.jsp"></jsp:include>
	<div class="w3-container">
		<div>
			<form action="<c:url value="/musteriListe"/>">
				<button class="btn btn-primary btn-lg" type="submit" name="liste">Musteri
					Listele</button>
			</form>
			<form action="<c:url value="/musteriEkle"/>">
				<button class="btn btn-primary btn-lg" type="submit" name="ekle">Musteri
					Ekle</button>
			</form>
			<form action="<c:url value="/musteriDuzenle"/>">
				<button class="btn btn-primary btn-lg" type="submit" name="duzen">Musteri
					Duzenle</button>
			</form>
			<button class="btn btn-success btn-lg" type="button" name="admin">Hosgeldiniz ${admin }</button>
		</div>
	</div>
</body>
</html>