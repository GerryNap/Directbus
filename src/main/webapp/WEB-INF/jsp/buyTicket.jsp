<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype html>
<html lang="it">
<head>
<%@include file="includes/import.jsp"%>

<link href="css/buyTicket.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css"
	rel="stylesheet" />

<title>DirectBus</title>
</head>
<body id="body">
	<%@include file="includes/header.jsp"%>
	<script src="/js/buyTicket.js"></script>
	<form id="register-form" class="col-6 col-6 mx-auto position-relative">
		<div class="row">
			<!-- INIZIO PRIMA RIGA -->
			<div class=" col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">

				<h5>Contatti acquirente</h5>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="telefono"
						placeholder="Telefono" required> <label for="telefono">Telefono</label>
				</div>
				<div class="form-check form-switch">
					<input id="acquirente" class="form-check-input" type="checkbox"
						onclick="checkMe()"> <label id="check"
						class="form-check-label" for="flexSwitchCheckDefault">L'acquirente
						corrisponde al passeggero 1</label>
				</div>
				<!-- INSERIRE COLONNA SINISTRA -->
				<h5>Passeggero</h5>
				<div class="row">
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="nome"
								placeholder="Nome" required> <label for="nome">Nome</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="cognome"
								placeholder="Cognome" required> <label for="cognome">Cognome</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="numeroTelefono"
								placeholder="Telefono" required> <label
								for="numeroTelefono">Telefono</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="email"
								placeholder="Email" required> <label for="email">Email</label>
						</div>
					</div>
				</div>
				<h5>Passeggero 2</h5>
				<div class="row">
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="nome"
								placeholder="Nome" required> <label for="nome">Nome</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="cognome"
								placeholder="Cognome" required> <label for="cognome">Cognome</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="numeroTelefono"
								placeholder="Telefono" required> <label
								for="numeroTelefono">Telefono</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="email"
								placeholder="Email" required> <label for="email">Email</label>
						</div>
					</div>
				</div>
				<h5>Passeggero 3</h5>
				<div class="row">
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="nome"
								placeholder="Nome" required> <label for="nome">Nome</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="cognome"
								placeholder="Cognome" required> <label for="cognome">Cognome</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="numeroTelefono"
								placeholder="Telefono" required> <label
								for="numeroTelefono">Telefono</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="email"
								placeholder="Email" required> <label for="email">Email</label>
						</div>
					</div>
				</div>
			</div>
			<br>


			<!-- INSERIRE COLONNA A DESTRA -->
			<div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
				<center>
					<h1 style="color: white;">Il tuo viaggio</h1>
				</center>

				<div class="row justify-content-center">
					<div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 col-xxl-2">
						<label>20:00</label>
					</div>
					<div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1 col-xxl-1">
						<i class="bi bi-geo-fill" style="color: Yellow"></i>
					</div>
					<div class="col-3 col-sm-3 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
						<label><%=request.getParameter("stazionePartenza")%></label>
					</div>
				</div>
				<br>
				<div class="row justify-content-center">
					<div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 col-xxl-2">
						<label>02:00</label>
					</div>
					<div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1 col-xxl-1">
						<i class="bi bi-geo-alt-fill" style="color: Yellow"></i>
					</div>
					<div class="col-3 col-sm-3 col-md-3 col-lg-3 col-xl-3 col-xxl-3">
						<label><%=request.getParameter("stazioneArrivo")%></label>
					</div>
				</div>
				<div class="row mt-3" style="margin-right: 15%">
					<div class="badge">
						<i
							class="bi bi-clock-fill col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1 col-xxl-1"
							style="color: yellow;"><label
							
							>07:30<i
								class="bi bi-people-fill"
								style="color: yellow; margin-left: 10%"><label
									
									>2 <label>Passeggeri</label></label></i></label></i>




					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col" style="margin-left: 20%;">
						<div class="mt-5">

							<h3 style="color: #FFCC00;">Riepilogo ordine</h3>
							<hr style="color: #FFCC00;">
							<div class="row">
								<div class="col-sm-12 col-md-12 col-lg-8 col-xl-2 col-xxl-2">
									<label>Cosenza</label>
								</div>
								<div class="col-sm-12 col-md-12 col-lg-8 col-xl-1 col-xxl-1">
									<i class="bi bi-arrow-right"
										style="color: yellow; margin-left: 350%"></i>
								</div>
								<div class="col-sm-12 col-md-12 col-lg-8 col-xl-2 col-xxl-2">
									<label>Roma</label>
								</div>
							</div>
							<div id="containerPasseggeri">
								<div class="row">
									<div class="col">
										<label>Passeggero 1:</label>
									</div>
									<div class="col">
										<label>30,50 EUR</label>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<label>Passeggero 2:</label>
									</div>
									<div class="col">
										<label>30,50 EUR</label>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<label>Passeggero 3:</label>
									</div>
									<div class="col">
										<label>30,50 EUR</label>
									</div>
								</div>
								<hr style="color: #FFCC00;">
								<div class="row">
									<div class="col">
										<label>Totale:</label>
									</div>
									<div class="col">
										<label>111,00 EUR</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</form>
</body>
</html>