<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">
	<head>
		<%@include file="includes/import.jsp"%>
		
		<script src="/js/main.js"></script>
		<title>Directbus</title>
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
					id="startStation" required> <input type="text"
					placeholder="Arrivo"
					class="col-12 col-sm-12 col-md-5 mt-2 rounded-pill" id="endStation"
					required> 
				<input type="date" class="col-12 col-sm-12 col-md-4 me-2 mt-2 rounded-pill" id="date">
				<input type="number" min="1" placeholder="Biglietti"
					class="col-12 col-sm-12 col-md-2 me-2 mt-2 rounded-pill"
					id="passengers" required>
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
				<button type="button"
					class="btn btn-warning col-12 col-sm-12 col-md-1 me-1 rounded-pill"
					disabled>Prezzo</button>
				<button type="button"
					class="btn btn-warning col-12 col-sm-12 col-md-1 me-1 rounded-pill"
					disabled>Data</button>
				<button type="button"
					class="btn btn-warning col-12 col-sm-12 col-md-1 me-1 rounded-pill"
					disabled>Durata</button>
				<button type="button"
					class="btn btn-warning col-12 col-sm-12 col-md-2 rounded-pill"
					disabled>Orario partenza</button>
			</div>
		</div>
	</section>

	<!-- NEW CARD -->
	<section id="cardTicket">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<c:forEach var="route" items="${routes}">
					<div class="card me-5 mt-3" style="width: 18rem;">
						<div class="card-body">
							<h5 class="card-title">${route.agency}</h5>
							<p class="card-text">Partenza: ${route.dataPartenza}</p>
							<p class="card-text">${route.startS} - ${route.departureTime}</p>
							<p class="card-text">Arrivo: ${route.dataArrivo}</p>
							<p class="card-text">${route.destinationS} - ${route.arrivalTime}</p>
							<p class="card-text">${route.price}  <span><a href="buyTicket" class="rounded-pill btn btn-primary">Acquista</a></span></p>
						</div>
					</div>
				</c:forEach>
				<c:remove var="routes" scope="session"></c:remove>
			</div>
		</div>
	</section>
</body>
</html>
