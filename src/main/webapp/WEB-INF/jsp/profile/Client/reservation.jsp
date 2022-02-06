<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link href="css/reservation.css" rel="stylesheet"/>

<section id="reservation" class="col-9 col-sm-9 col-md-9 col-lg-9 col-xl-9">
	<h1>LE MIE PRENOTAZIONI</h1>
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<c:forEach var="at" items="${activeTicket}">
					<div class="card me-5 mt-3" style="width: 18rem;" id="card-reservation">
						<div class="card-body">
							<h5 class="card-title">Agenzia: ${at.agency}</h5>
							<p class="card-text">Stazione di partenza: ${at.startS}</p>
							<p class="card-text">Partenza: ${at.dataPartenza}</p>
							<p class="card-text">${at.startS} - ${at.departureTime}</p>
							<p class="card-text">Arrivo: ${at.dataArrivo}</p>
							<p class="card-text">${at.destinationS} - ${at.arrivalTime}</p>
							<span class="badge bg-success">IN CORSO</span>
						</div>
					</div>
				</c:forEach>
				<c:remove var="activeTicket" scope="session"></c:remove>
			</div>
		</div>
</section>