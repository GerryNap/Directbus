<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link href="css/oldRoutes.css" rel="stylesheet"/>

<section id="oldRoutes" class="col-9 col-sm-9 col-md-9 col-lg-9 col-xl-9">
	<h1 style="margin-left:50%;">TRATTE TERMINATE</h1>
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<c:forEach var="route" items="${oldRoutes}">
					<div class="card me-5 mt-3" style="width: 18rem;" id="card-old-routes">
						<div class="card-body">
							<h5 class="card-title">${route.agency}</h5>
							<p class="card-text">Partenza: ${route.dataPartenza}</p>
							<p class="card-text">${route.startS} - ${route.departureTime}</p>
							<p class="card-text">Arrivo: ${route.dataArrivo}</p>
							<p class="card-text">${route.destinationS} - ${route.arrivalTime}</p>
							<span class="badge bg-danger">TERMINATO</span>
						</div>
					</div>
				</c:forEach>
				<c:remove var="routes" scope="session"></c:remove>
					
			</div>
		</div>
</section>