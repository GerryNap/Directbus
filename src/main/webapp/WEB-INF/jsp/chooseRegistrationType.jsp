<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">
<head>
<c:if test="${user != null}">
	<c:redirect url="/myProfile" />
</c:if>
<%@include file="includes/import.jsp"%>

<link href="css/choose-registration.css" rel="stylesheet" />

<title>DirectBus</title>
</head>

<body id="body">
	<%@include file="includes/navbar.jsp"%>
	<div class="container mt-5">
		<form id="register-form"
			class="col-xs-12 col-sm-10 col-md-6 col-lg-4 col-xl-3 mx-auto position-relative">
			<center id="buttons">
				<img src="../../images/logo-sito.png" class="img-fluid"
					alt="Responsive image">

				<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3"
					id="btnAgency">
					<button type="button" id="agencyClient" class="btn"
						onClick="location.href='businessRegistration'">Sono
						un'azienda*</button>
				</div>

				<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3"
					id="btnClient">
					<button type="button" id="client" class="btn"
						onClick="location.href='registration'">Sono un cliente</button>
				</div>

				<div id="text">
					<font color="white">*Se hai una società di viaggi e vuoi
						promuovere le tue tratte devi obbligatoriamente registrarti come
						un'azienda</font>
				</div>
			</center>
		</form>
	</div>
</body>
</html>