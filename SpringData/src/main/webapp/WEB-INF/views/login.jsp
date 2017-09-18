<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Giris Yap</title>
<link rel="shortcut icon" href="<c:url value="/kaynak/icon/idc1.jpg"/>">
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/kaynak/bootstrap-3.3.7/css/w3.css"/>">
<script
	src="<c:url value="/kaynak/bootstrap-3.3.7/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/kaynak/script/jquery-3.2.1.min.js"/>"></script>
<link rel="stylesheet"
	href="<c:url value="https://www.w3schools.com/w3css/4/w3.css"/>">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value="/kaynak/css/giris.css"/>">
</head>
<body>
	<jsp:include page="../views/menu/menu.jsp"></jsp:include>

	<sf:form name='f' action='${pageContext.request.contextPath}/login'
		method="POST">

		<div class="imgcontainer">
			<img src="<c:url value="/kaynak/resimler/login.jpg"/>" />
		</div>

		<div class="container">
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			<input class="form-control" type="text" placeholder="Kullanici Adi Giriniz" name="username"> 
			
			
			</div>
			<div class="input-group">
			<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			<input class="form-control" type="password" placeholder="Parola Giriniz" name="password">
			
			</div>
			
			<button name="submit" type="submit">Giris</button>
			<div class="checkbox">
				<label> <input type="checkbox" id="remember"
					name="remember-me">Beni Hatirla
				</label>
			</div>
			<c:if test="${param.error != null }">
				<strong class="text-danger">Hatali Giris Denemesi</strong>
			</c:if>
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn">Iptal Et</button>
			<span class="psw">Unuttun mu? <a href="#">parola?</a></span>
		</div>
		<input name="${_csrf.parameterName}" type="hidden"
			value="${_csrf.token}" />
	</sf:form>
</body>
</html>