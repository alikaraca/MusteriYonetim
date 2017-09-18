<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
div.w3-container{
height: 632px;
 background-image:url("kaynak/resimler/paper.jpg");
}
input[name=MusteriAdi]{
	padding: 5px 12px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
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
<title>Musteri Liste</title>
<link rel="shortcut icon" href="<c:url value="/kaynak/icon/idc1.jpg"/>">
<link rel="stylesheet" href="<c:url value="/kaynak/bootstrap-3.3.7/css/bootstrap.min.css"/>">
<script src="<c:url value="/kaynak/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.js"/>"></script>
<link rel="stylesheet" href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="<c:url value="/kaynak/script/w3.js"/>"></script>
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
		<span class="glyphicon glyphicon-search"></span>
		<input class="btn btn-info" type="submit" value="Müsteri Ara">	
		<input oninput="w3.filterHTML('#arama','tr',this.value)" placeholder="Müsteri Ara" name="MusteriAdi">
		<table id="tablo" class="w3-table w3-striped w3-border">
			<tr class=w3-red>
			 	<th>Musteri Id</th>
			 	<th onclick="w3.sortHTML('#tablo', '.item', 'td:nth-child(2)')" style="cursor:pointer">Musteri Adi</th>
			 	<th onclick="w3.sortHTML('#tablo', '.item', 'td:nth-child(3)')" style="cursor:pointer">Musteri Soyad</th>
			 	<th onclick="w3.sortHTML('#tablo', '.item', 'td:nth-child(4)')" style="cursor:pointer">Musteri No</th>
			 	<th onclick="w3.sortHTML('#tablo', '.item', 'td:nth-child(5)')" style="cursor:pointer">Musteri Adres</th>
			 	<th onclick="w3.sortHTML('#tablo', '.item', 'td:nth-child(6)')" style="cursor:pointer">Musteri E-mail</th>
			</tr>
			<c:forEach var="r" items="${musteri}">
				<sf:form commandName="musteri">
					<tr class="item" id="arama">
						<c:set var="mi" value="${r.musteriId}"></c:set>
						<td class="active"><label  >${mi }</label></td>
						<c:set var="ma" value="${r.musteriAd}"></c:set>
						<td class="active"><label >${ma }</label></td>
						<c:set var="ms" value="${r.musteriSoyad}"></c:set>
						<td class="active"><label >${ms }</label></td>
						<c:set var="mn" value="${r.musteriNo}"></c:set>
						<td class="active"><label >${mn }</label></td>
						<c:set var="madres" value="${r.musteriAdres}"></c:set>
						<td class="active"><label>${madres }</label></td>
						<c:set var="mmail" value="${r.musteriEmail}"></c:set>
						<td class="active"><label >${mmail }</label></td>
					</tr>
				</sf:form>
			</c:forEach>
		</table>
	</div>
</body>
</html>