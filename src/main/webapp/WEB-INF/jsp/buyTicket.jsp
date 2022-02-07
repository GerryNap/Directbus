<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype html>
<html lang="it">

<head>

<c:choose>
	<c:when test="${user == null}">
		<c:redirect url="/login" />
	</c:when>
	<c:when test="${userType != 'Client'}">
		<c:redirect url="/myProfile" />
	</c:when>
	<c:when test="${user.verified != true}">
		<c:redirect url="/myProfile" />
	</c:when>
</c:choose>
<script
	src="https://www.paypal.com/sdk/js?currency=EUR&client-id=AfxAGKB_Ow-Q8U96Xgxr84cKesG9xM-sd6J3uBJdGjx1D9kBQXwCPXNdV8IxPtjro7R8LOTGzAI4nlIm"></script>
<%@include file="includes/import.jsp"%>

<link href="css/buyTicket.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"
	rel="stylesheet" />

<title>DirectBus</title>
</head>
<body id="body">
	<%@include file="includes/navbar.jsp"%>
	<script src="/js/buyTicket.js"></script>
	<form id="register-form" class="col-6 col-6 mx-auto position-relative">
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6"
				id="colonnaSinistra">
				<!-- COLONNA SINISTRA -->

				<h5>Contatti acquirente</h5>
				<div class="form-floating mb-3">
					<input type="hidden" id="sessionEmail" value="${user.email}">
					<input type="hidden" id="sessionName" value="${user.firstName}">
					<input type="hidden" id="sessionLastName" value="${user.lastName}">
					<input type="text" class="form-control" id="Telefono"
						placeholder="Telefono" required> <label for="telefono">Telefono</label>
				</div>
				<div class="form-check form-switch">
					<input id="acquirente" class="form-check-input" type="checkbox"
						onclick="checkMe()" checked> <label id="check"
						class="form-check-label" for="flexSwitchCheckDefault">L'acquirente
						corrisponde al passeggero 1</label>
				</div>
				<br>
				<h5 id="idPasseggero">Passeggero 1</h5>
				<div class="row" id="nascosto">

					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="Nome"
								placeholder="Nome" required> <label for="Nome">Nome</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="Cognome"
								placeholder="Cognome" required> <label for="Cognome">Cognome</label>
						</div>
					</div>
				</div>
				<div class="row" id="nascosto2">
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="Telefono"
								placeholder="Telefono" required> <label for="Telefono">Telefono</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="Email"
								placeholder="Email" required> <label for="Email">Email</label>
						</div>
					</div>
				</div>
				<c:forEach begin="2" end="${param.passengers}" varStatus="loop">
					<br>
					<h5 id="passeggero${loop.index}"></h5>
					<div class="row">
						<div class="col-md">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="Nome"
									placeholder="Nome" required> <label for="Nome">Nome</label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="Cognome"
									placeholder="Cognome" required> <label for="Cognome">Cognome</label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="Telefono"
									placeholder="Telefono" required> <label for="Telefono">Telefono</label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating mb-3">
								<input type="text" class="form-control" id="Email"
									placeholder="Email" required> <label for="Email">Email</label>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- FINE COLONNA SINISTRA -->


			<!-- INSERIRE COLONNA A DESTRA -->
			<div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
				<h1 style="color: black; text-align: center;">Il tuo viaggio</h1>
				<div class="row justify-content-center">
					<div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 col-xxl-2">
						<label style="white-space: nowrap;">${param.departureTime}</label>
					</div>
					<div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1 col-xxl-1">
						<i class="bi bi-geo-fill" style="color: black"></i>
					</div>
					<div class="col-3 col-sm-3 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
						<label style="white-space: nowrap;">${param.startStation}</label>
					</div>
				</div>
				<br>
				<div class="row justify-content-center">
					<div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 col-xxl-2">
						<label style="white-space: nowrap;">${param.arrivalTime}</label>
					</div>
					<div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1 col-xxl-1">
						<i class="bi bi-geo-alt-fill" style="color: black"></i>
					</div>
					<div class="col-3 col-sm-3 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
						<label style="white-space: nowrap;">${param.destinationStation}</label>
					</div>
				</div>
				<div class="row mt-3">
					<div class="badge">

						<i
							class="bi bi-clock-fill col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1 col-xxl-1"
							style="color: black;"><label>${param.departureTime} <i
								class="bi bi-people-fill" style="color: black;"> <label>
										${param.passengers} <label> Passeggeri</label>
								</label></i></label></i>

					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col">
						<div class="mt-5">

							<h3 style="color: #black;">Riepilogo ordine</h3>
							<hr style="color: #black;">
							<div class="row">
								<div class="col-sm-12 col-md-12 col-lg-8 col-xl-2 col-xxl-2">

									<label style="white-space: nowrap;">${param.startStation}
										<i class="bi bi-arrow-right" style="color: black;"></i> <label
										style="white-space: nowrap;">${param.destinationStation}</label>
									</label>
								</div>

							</div>
							<div id="containerPasseggeri">
								<c:forEach begin="1" end="${param.passengers}" varStatus="loop">
									<div class="row">
										<div class="col">
											<label id="Passeggero${loop.index}"></label>
										</div>
										<div class="col">
											<label id="Prezzo${loop.index}">${param.price} EUR</label>
										</div>
									</div>
								</c:forEach>
								<hr style="color: #black">
								<div class="row">
									<div class="col">
										<label>Totale:</label>
									</div>
									<div class="col">
										<label id="prezzoTotale"></label>
									</div>
								</div>
							</div>
							<div id="pagamento">
								<hr style="color: #black;">
								<h3 style="color: #black;">Checkout</h3>
								<div id="paypal-button-container" class="row mt-3"></div>
							</div>
							<div class="container mt-3">
								<div id="liveAlertPlaceholder" class="col-md-6 mx-auto"></div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</form>
</body>
</html>