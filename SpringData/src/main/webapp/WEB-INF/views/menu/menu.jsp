<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body {
    margin: 0px;
    padding: 0px;
}
nav ul {
    margin: 0px;
    padding: 0px;
    float: left;
    list-style-type: none;
}
nav ul li {
    padding: 0px;
    float: left;
}
nav ul li ul {
    display: none;
}
nav ul li ul li {
    width: 50%;
    padding: 0px;
    display: block;
}
nav ul li:hover > ul {
    position: absolute;
    display: block;
}</style>
<div class="w3-top">
	<div class="w3-bar w3-white w3-wide w3-padding w3-card-2" >
		<a class="navbar-brand" href="#"><b>MYS</b>Müsteri Yonetim Sistemi</a>
		<ul class="nav navbar-nav">
		<li class="active"><a href="<c:url value="/"/>">Anasayfa</a></li>
		<li class="active"><a href="<c:url value="/musteriEkle"/>">Müsteri Ekle</a></li>
		<li class="active"><a href="<c:url value="/musteriListe"/>">Müsteri Listele</a></li>
		<li class="active"><a href="<c:url value="/musteriDuzenle"/>">Müsteri Düzenle</a></li>
		<li class="active"><a id="saat"></a></li>
	</ul>
	<script>
		function saatGoster(){
			var time=new Date();
			document.getElementById("saat").innerHTML = time.toLocaleTimeString();
		}
		saatGoster();
		setInterval("saatGoster()",1000);
		</script>
	<ul class="nav navbar-nav navbar-right">
			<c:url var="loginUrl" value="/login" />
			<sf:form action="${loginUrl}" method="get">
				<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-log-in"></span> Login</button>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</sf:form>
		</ul>
	</div>
</div>
</html>