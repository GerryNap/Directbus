<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="it">
	<head>
		<%@include file="includes/import.jsp"%>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
		<link href="css/aboutUs.css" rel="stylesheet" />
		<script src="/js/main.js"></script>
		<title>Directbus</title>
	</head>

<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="col-xl-12">
		<div class="card bg-dark text-white">
			<img alt="autobus-header" src="images/autobus1.jpg" width="100%">
			<div class="card-img-overlay">
				<h1 class="card-text">CHI SIAMO</h1>
			</div>
		</div>
	</div>
	
	<header class="mt-5">
		<center>
		<h1><strong>DirectBus è il tuo insostituibile compagno di viaggio</strong></h1>
	    <h5>Il nostro sito consente di acquistare,<strong> velocemente e in modo intuitivo, </strong>i biglietti di pullman</h5>
	    <h5> in tutta Italia. </h5>
	   </center>
	</header>

	<section id="who">
		<div class="card mb-3" id="team-card">
			<div class="row g-0">
				<div class="col-md-7">
					<p class="card-text"><strong>Agili come una start up, siamo nati da poco ma:</strong> siamo una community di appassionati</p>
					<p class="card-text">esploratori tech con tre obiettivi: semplificare la vita dei viaggiatori, conquistare nuove rotte e</p>					
					<p class="card-text">molteplici esperienze e competenze volte a garantire i migliori prodotti e servizi</p>
					<p class="card-text">promuovere i viaggi per rendere il trasporto globale sostenibile.</p>
					<br class="card-text">
					<p class="card-text">Ogni giorno raccogliamo le tratte, i prezzi e gli orari di molte compagnie di pullman di</p>
					<p class="card-text"><strong>21 Regioni, </strong>per offrirti gli itinerari convenienti e le informazioni di viaggio in tempo reale.</p>
				</div>
				<div class="col-md-4">
					<div class="card-body" id="card-body-reverse">
						<img src="images/logo-sito.png"class="img-fluid rounded-start" alt="team">
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="why">
			<center>
				<h1>Veniamo al sodo. Ecco perché dovresti affidarti a DirectBus</h1>
				<p style="margin-top: 3%;">A te basta inserire la stazione di
					partenza e di arrivo, tutto il resto lo facciamo noi:</p>
				<p>compariamo le soluzioni di viaggio di pullman e ti offriamo
					una piattaforma intuitiva per acquistare nel modo</p>
				<p>più rapido e semplice possibile.</p>
			</center>
			<div class="row">
				<div class="col">
					<div class="card mb-3" id="team-card">
						<div class="row g-0" id="transparent">
							<div class="col-md-4" style="margin-left:10%;">
								<i class="bi bi-pin-map-fill"></i>
								<h2 class="card-text">Destinazioni Italiane a portata di mano</h2>
								<p class="card-text">Viaggiare non è mai stato così semplice.</p>
								<br class="card-text">
								<p class="card-text">In Italia, <strong>il biglietto del pullman ideale per le tue esigenze </strong></p>
								<p class="card-text"><strong>te lo suggerisce DirectBus.</strong></p>								
							</div>
							<div class="col-md-4" style="margin-left:10%;">
								<i class="bi bi-currency-dollar"></i>
								<h2 class="card-text">Il nostro modello di business</h2>
								<p class="card-text">Abbiamo realizzato una piattaforma agile ed intuitiva per portare sempre più viaggiatori a destinazione.</p>								
								<br class="card-text">
								<p class="card-text">Acquista in sicurezza con <strong><a href="https://www.paypal.com/it/home">PayPal</a></strong></p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<section id="partner" style=" margin-bottom:10%;">
		<div style="margin-left:20%;">
			<h2>DirectBus Partner Solutions: le nostre soluzioni per le imprese</h2>
			<p>DirectBus Partner Solutions offre alle aziende, ai rivenditori di servizi di viaggio una piattaforma agile e scalabile</p>
			<p> per incoraggiare i viaggiatori di tutto il mondo a scegliere i pullman.</p>
			<a href="/businessRegistration"><strong>Diventa anche tu un nostro partner...</strong></a>
		</div>
	</section>
</body>
</html>
