<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/travelHistory.css" rel="stylesheet" />

<section id="travel-history"
	class="col-9 col-sm-9 col-md-9 col-lg-9 col-xl-9">
	<h1 style="margin-left:50%;">STORICO PRENOTAZIONI</h1>
	<div class="container">
		<div class="row justify-content-center align-items-center">
				<c:forEach var="th" items="${travelHistory}">
					<div class="card me-5 mt-3" style="width: 18rem;" id="card-reservation">
						<div class="card-body">
							<h5 class="card-title">Destinazione: ${th.destinationS}</h5>
							<p class="card-text">Stazione di partenza: ${th.startS}</p>
							<p class="card-text">Partenza: ${th.dataPartenza}</p>
							<p class="card-text">${th.startS} - ${th.departureTime}</p>
							<p class="card-text">Arrivo: ${th.dataArrivo}</p>
							<p class="card-text">${th.destinationS} - ${th.arrivalTime}</p>
							<span class="badge bg-danger">TERMINATO</span>
						</div>
					</div>
				</c:forEach>
				<c:remove var="travelHistory" scope="session"></c:remove>
			</div>
	</div>
</section>