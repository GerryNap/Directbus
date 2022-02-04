<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/discover.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	<script src="/js/discover.js"></script>
    <title>DirectBus</title>
  </head>
	<body id="body">
		<%@include file="includes/navbar.jsp"%>
		<section id="header-section">
			<div class="card">
			  <img src="images/discover-image.jpg" class="card-img" alt="">
			  <div class="card-img-overlay">
			    <p class="card-text">Luoghi da scoprire</p>
			  </div>
			</div>
		</section>
		<section id="first-destination">
		<div class="row">
			 <div class="first-container col-md-6">
			 	<div class="text">
				<h4 class="mb-3">Badolato</h4>
				<p>La<strong> città degli innamorati</strong>, questo l’epiteto con cui è conosciuta in tutto il mondo 
				Badolato, sorge sulle rive dell’Adige, nel punto in cui il fiume incontra la Pianura
				Padana. Inserita nel <strong>World Heritage List dell’UNESCO</strong>, la città di Badolato ha alle 
				spalle una storia una grandiosa, iniziata nel I secolo a.C.</p>
				<p><br></p>
				<p>La caratteristica Piazza delle Erbe rappresenta il fulcro del commercio della città, che vanta poi 
				numerosi altri monumenti di rilievo, oltre a splendidi scorci paesaggistici che hanno fatto innamorare 
				i visitatori di ogni parte del mondo.</p> 
				<p><br></p>
				<p>Sei pronto per andare alla scoperta di <strong>cosa vedere a Badolato</strong>?</p>
				</div>
				<div class="col-md-6">
					 <img src="images/badolato.jpg" alt="badolato">
				</div>
			</div>
		</div>
		</section>
		<section id="second-destination">
			
		</section>
		<section id="third-destination">
			
		</section>
		<section id="fourth-destination">
			
		</section>
		<section id="fifth-destination">
			
		</section>
		<section id="sixth-destination">
			
		</section>
		<section id="seventh-destination">
			
		</section>
		<section id="octave-destination">
			
		</section>
  </body>
</html>