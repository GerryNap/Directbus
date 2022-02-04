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
  	
    <link href="css/publicRoute.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
	<body id="body">
		<%@include file="includes/navbar.jsp"%>
	    <script src="/js/publishRoute.js"></script>
		<section class="container" id="firstContainer">
			<form id="register-form">
			
				<header class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mx-auto">
				<h1>PUBBLICA UNA TRATTA</h1>
				</header>
			
			<input type="hidden" id="session" value="${user.email}">
			<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6 mx-auto">
				<div  class="form-floating">
					<i class="bi bi-pin-map"> STAZIONE DI PARTENZA</i>
					<input class="form-control" id="LastName" placeholder="Stazione di partenza"></input>
					<label for="LastName" class="mt-4">Scegli una stazione</label>
				</div>
				<div class="form-floating mt-3">
				  <i class="bi bi-pin-map"> STAZIONE DI ARRIVO</i>
				  <input type="text" class="form-control" id="Email" placeholder="Stazione d'arrivo">
				  <label for="Email" class="mt-4">Scegli una stazione</label>
				</div>
				<div class="form-floating mt-3">
				  <i class="bi bi-ticket-perforated"> BIGLIETTI</i>
				  <input type="number" class="form-control" id="Biglietti" min="20" max="50" placeholder="Numero biglietti">
				  <label for="Biglietti" class="mt-4">Scegli la quantità dei biglietti</label>
				</div>
				<div class="form-floating mt-3">
				  <i class="bi bi-calendar-date"> / <i class="bi bi-alarm"> PARTENZA</i></i>
				  <input placeholder="Data/orario di partenza" type="datetime-local" id="data" class="form-control">
				  <label for="data" class="mt-4">Scegli data e ora di partenza</label>
				</div>
				<div class="form-floating mt-3">
				  <i class="bi bi-calendar-date"> / <i class="bi bi-alarm"> ARRIVO</i></i>
				  <input class="form-control" id="time" placeholder="Data/orario di arrivo" type="datetime-local">
				  <label for="time" class="mt-4">Scegli data e ora di partenza</label>
				</div>
				<div class="form-floating mt-3">
				  <i class="bi bi-cash-coin"> PREZZO</i>
				  <input placeholder="Orario/data di partenza" type="number" step="any" min="1" id="price" class="form-control">
				  <label for="start" class="mt-4">Prezzo del biglietto</label>
				</div>
				<div class="btn-group col-md-12 col-lg-12 col-xl-12 mt-5 mb-5">
					<button id="sendButton" type="submit" class="btn">PUBBLICA</button>
				</div>
			</div>		
			</form>	
		</section>
  </body>
</html>