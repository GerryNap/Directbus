<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<c:choose>
  		<c:when test="${user == null}">
  			<c:redirect url="/login" />
  		</c:when>
  		<c:when test="${userType != 'Agency'}">
  			<c:redirect url="/" />
  		</c:when>
  		<c:when test="${user.verified != true}">
  			<c:redirect url="/myProfile" />
  		</c:when>
  	</c:choose>
  	
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/login-register.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
	<body id="body">
		<%@include file="includes/header.jsp" %>
	    <script src="/js/publishRoute.js"></script>
		<div class="container mt-5 " id="firstContainer">
			<form id="register-form">
			<center>
				<div class="col-xl-4 mx-auto position-relative">
				<h1 id="public" class="col-xl-5 mx-auto position-relative mb-5" style="color: white;">Pubblica una tratta</h1>
				</div>
			</center>
			<input type="hidden" id="session" value="${user.email}">
			<div class="col-md-8 col-lg-6 col-xl-5 mx-auto position-relative">
				<div  class="form-floating mb-3">
					<i class="bi bi-wallet2"></i>
					<input class="form-control" id="LastName" placeholder="Stazione di partenza">
					<label for="LastName">Stazione di partenza</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-map-fill"></i>
				  <input type="text" class="form-control" id="Email" placeholder="Stazione d'arrivo">
				  <label for="Email">Stazione d'arrivo</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-map-fill"></i>
				  <input type="number" class="form-control" id="Biglietti" min="20" max="50" placeholder="Numero biglietti">
				  <label for="Biglietti">Numero biglietti</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-calendar-check-fill"></i>
				  <input placeholder="Data/orario di partenza" type="datetime-local" id="data" class="form-control">
				  <label for="data">Data/orario di partenza</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-clock-fill"></i>
				  <input class="form-control" id="time" placeholder="Durata" type="time">
				  <label for="time">Durata</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-clock-fill"></i>
				  <input placeholder="Orario/data di partenza" type="number" step="any" min="1" id="price" class="form-control">
				  <label for="start">Prezzo</label>
				</div>
				<center>
					<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3">
						<button id="sendButton" type="submit" class="btn">Pubblica</button>
					</div>
				</center>
			</div>		
			</form>	
		</div>
  </body>
</html>