<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/travelHistory.css" rel="stylesheet" />

<section id="travel-history">
	<h1 id="storicoPrenotazioni">STORICO PRENOTAZIONI</h1>
	<div class="container">
		<div class="row justify-content-center align-items-center">
			<c:forEach var="th" items="${travelHistory}">
				<form method="get" action="review" class="card me-5 mt-3" style="width: 18rem; border: 2px solid black;">
				<!--  	<div class="card me-5 mt-3" style="width: 18rem;" id="card-reservation"> -->
						<div class="card-body">
							<input type="hidden" name="agency" value="${th.agency}">
							<h5 class="card-title">${th.agency}</h5>
							
							<input type="hidden" name="dataPartenza" value="${th.dataPartenza}">
							<p class="card-text">Partenza: ${th.dataPartenza}</p>
							
							<input type="hidden" name="stazionePartenza" value="${th.startS}">
							<input type="hidden" name="orarioPartenza" value="${th.departureTime}">
							<p class="card-text">${th.startS} - ${th.departureTime}</p>
							
							<hr style="color: black;">
							
							<input type="hidden" name="dataArrivo" value="${th.dataArrivo}">
							<p class="card-text">Arrivo: ${th.dataArrivo}</p>
							
							<input type="hidden" name="stazioneArrivo" value="${th.destinationS}">
							<input type="hidden" name="orarioArrivo" value="${th.arrivalTime}">
							<p class="card-text">${th.destinationS} - ${th.arrivalTime}</p>
							
							<div class="row">
								<div class="col">
									<span class="badge bg-danger">TERMINATO</span>
								</div>
								<div class="col">
									<button type="submit" class="badge btn" id="recensione" onclick="window.location.href = '/review'" style="margin: 0px 0px 0px 0px">RECENSISCI</button>
								</div>
								
							</div>
							
						</div>
				<!--	</div> -->
				</form>
			</c:forEach>
			<c:remove var="travelHistory" scope="session"></c:remove>
		</div>
	</div>
</section>