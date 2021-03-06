<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link href="css/activeRoutes.css" rel="stylesheet"/>

<section id="activeRoutes">
	<h1 id="tratteAttive">TRATTE ATTIVE</h1>
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<c:forEach var="route" items="${activeRoutes}">
					<div class="card me-5 mt-3" style="width: 18rem;" id="card-active-routes">
						<div class="card-body">
							<h5 class="card-title">Cod: ${route.cod}</h5>
							<p class="card-text">Partenza: ${route.dataPartenza}</p>
							<p class="card-text">${route.startS} - ${route.departureTime}</p>
							<hr style="color: black;">
							<p class="card-text">Arrivo: ${route.dataArrivo}</p>
							<p class="card-text">${route.destinationS} - ${route.arrivalTime}</p>
							<span class="badge bg-success">IN CORSO</span>
						</div>
					</div>
				</c:forEach>
				<c:remove var="routes" scope="session"></c:remove>
			</div>
		</div>
</section>