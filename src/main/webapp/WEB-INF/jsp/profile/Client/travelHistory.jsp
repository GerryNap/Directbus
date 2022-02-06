<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/travelHistory.css" rel="stylesheet" />

<section id="travel-history">
	<h1 id="storicoPrenotazioni">STORICO PRENOTAZIONI</h1>
	<div class="container">
		<div class="row justify-content-center align-items-center">
			<c:forEach var="th" items="${travelHistory}">
				<div class="card me-5 mt-3" style="width: 18rem;"
					id="card-reservation">
					<div class="card-body">
						<h5 class="card-title">${th.agency}</h5>
						<p class="card-text">Partenza: ${th.dataPartenza}</p>
						<p class="card-text">${th.startS} - ${th.departureTime}</p>
						<hr style="color: black;">
						<p class="card-text">Arrivo: ${th.dataArrivo}</p>
						<p class="card-text">${th.destinationS} - ${th.arrivalTime}</p>
						<div class="row">
							<div class="col">
								<span class="badge bg-danger">TERMINATO</span>
							</div>
							<div class="col">
								<span class="badge btn" id="recensione" type="button">RECENSISCI</span>
							</div>
							
						</div>
						
					</div>
				</div>
			</c:forEach>
			<c:remove var="travelHistory" scope="session"></c:remove>
		</div>
	</div>
</section>