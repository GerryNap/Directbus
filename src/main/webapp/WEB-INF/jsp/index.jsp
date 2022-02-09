<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">
	<head>
	<c:if test="${userType == 'Client'}">
		<c:redirect url="/myProfile" />
	</c:if>
		<%@include file="includes/import.jsp"%>
		<script src="/js/main.js"></script>
		<title>Directbus</title>
		<link href="css/index.css" rel="stylesheet" />
	</head>

<body>
	<%@include file="includes/navbar.jsp"%>
	<!-- NEW HEADER -->
	<header>
		<h1 style="text-align: center" class="mt-5">PRENOTA IL TUO
			VIAGGIO</h1>
	</header>

	<!-- NEW SEARCHBOX -->
	<section id="searchbox">
		<form
			class="container d-flex justify-content-center align-items-center mt-3"
			id="searchForm">
			<div class="row justify-content-center align-items-center">
				<input type="text" placeholder="Partenza"
					class="col-12 col-sm-12 col-md-5 me-3 mt-2 rounded-pill"
					id="startStation"  autocomplete="off" required> 
				<input type="text"
					placeholder="Arrivo"
					class="col-12 col-sm-12 col-md-5 mt-2 rounded-pill" id="endStation" autocomplete="off"
					required> 
				<input type="date" class="col-12 col-sm-12 col-md-4 me-2 mt-2 rounded-pill" id="date" autocomplete="off">
				<input type="number" min="1" placeholder="Biglietti"
					class="col-12 col-sm-12 col-md-2 me-2 mt-2 rounded-pill"
					id="passengers" autocomplete="off" required>
				<button type="submit"
					class="btn btn-warning col-12 col-sm-12 col-md-4 mt-2 rounded-pill"
					id="search">Cerca</button>
			</div>
		</form>
		<div class="container mt-3">
			<div id="liveAlertPlaceholder" class="col-md-6 mx-auto"></div>
		</div>
	</section>

	<hr>

	<!-- NEW  FILTERS-->
	<section id="filters">
		<div class="container mt-3">
			<div class="row justify-content-center align-items-center">
				<button type="button" id="orderByPrice" onclick="sort('sortByPrice')"
					class="btn btn-warning col-12 col-sm-12 col-md-1 me-1 rounded-pill">Prezzo</button>
				<button type="button" id="orderByData" onclick="sort('sortByDate')"
					class="btn btn-warning col-12 col-sm-12 col-md-1 me-1 rounded-pill">Data</button>
				<button type="button" id="orderByDuration" onclick="sort('sortByDuration')"
					class="btn btn-warning col-12 col-sm-12 col-md-1 me-1 rounded-pill">Durata</button>
				<button type="button" id="orderByTime" onclick="sort('sortByTime')"
					class="btn btn-warning col-12 col-sm-12 col-md-2 rounded-pill">Orario partenza</button>
			</div>
		</div>
	</section>

	<!-- NEW CARD -->
	<section id="cardTicket">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<c:forEach var="route" items="${routes}">
					<form method="get" action="buyTicket" class="card me-5 mt-3" id="card">
						<div class="card-body">
							<input type="hidden" name="agency" value="${route.agency}">
							<h5 class="card-title">${route.agency}</h5>
							
							<input type="hidden" name="startDate" value="${route.dataPartenza}">
							<p class="card-text">Partenza: ${route.dataPartenza}</p>
							
							<input type="hidden" name="startStation" value="${route.startS}">
							<input type="hidden" name="departureTime" value="${route.departureTime}">
							<p class="card-text">${route.startS} - ${route.departureTime}</p>
							
							<input type="hidden" name="arrivalDate" value="${route.dataArrivo}">
							<p class="card-text">Arrivo: ${route.dataArrivo}</p>
							
							<input type="hidden" name="destinationStation" value="${route.destinationS}">
							<input type="hidden" name="arrivalTime" value="${route.arrivalTime}">
							<p class="card-text">${route.destinationS} - ${route.arrivalTime}</p>
							
							<div>
								<input type="hidden" name="price" value="${route.price}">
								<button type="submit" class="btn" id="buyButton">Acquista<p class="card-text">${route.price}€</p></button>
							</div>
							
							<input type="hidden" name="codice" value="${route.cod}">
							<input type="hidden" name="passengers" value="${route.nBiglietti}">
						</div>
					</form>
				</c:forEach>
				 
			</div>
		</div>
	</section>
</body>
</html>
