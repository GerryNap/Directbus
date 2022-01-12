<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/buyTicket.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
  <body id="body">
  	<%@include file="includes/header.jsp" %>
  	<script src="/js/buyTicket.js"></script>
  	<form id="register-form" class="col-6 col-6 mx-auto position-relative">
  		<div class="row"> <!-- INIZIO PRIMA RIGA -->
  			<div class="col">
  				<div class="col-sx">
  					<h5>Contatti acquirente</h5>
			  		<div class="form-floating mb-3">
			  			<input type="text" class="form-control" id="telefono" placeholder="Telefono" required>
			  			<label for="telefono">Telefono</label>
			  		</div>
			  		<div class="form-check form-switch">
		  				<input id="acquirente" class="form-check-input" type="checkbox" onclick="checkMe()" >
		  				<label id="check" class="form-check-label" for="flexSwitchCheckDefault">L'acquirente corrisponde al passeggero 1</label>
					</div>
  				</div>
		  	</div>
	  		<br>
	  		<!-- INSERIRE COLONNA A DESTRA (PRIMA RIGA) -->
	  		<div class="col">
	  			<div class="col-dx">
	  				<h1>Il tuo viaggio</h1>
	  				<span> </span>
	  				Prendere le cose dinamiche
	  			</div>
	  			
	  		</div>
	  		
	  		
	  		<!-- FINE COLONNA DESTRA -->
	  	</div> <br>
	  	<div class="row"> <!-- INIZIO SECONDA RIGA -->
	  		<div class="col">
	  			<div class="col-sx">
	  				<h5>Passeggero</h5>
		  			<div class="row">
			  			<div class="col-md">
			  				<div class="form-floating mb-3">
				  				<input type="text" class="form-control" id="nome" placeholder="Nome" required>
				  				<label for="nome">Nome</label>
					  		</div>
			  			</div>
			  			<div class="col-md">
			  				<div class="form-floating mb-3">
				  				<input type="text" class="form-control" id="cognome" placeholder="Cognome" required>
				  				<label for="cognome">Cognome</label>
				  			</div>
			  			</div>
			  		</div>
			  		<div class="row">
			  			<div class="col-md">
			  				<div class="form-floating mb-3">
					  			<input type="text" class="form-control" id="numeroTelefono" placeholder="Telefono" required>
					  			<label for="numeroTelefono">Telefono</label>
					  		</div>
			  			</div>
			  			<div class="col-md">
			  				<div class="form-floating mb-3">
					  			<input type="text" class="form-control" id="email" placeholder="Email" required>
					  			<label for="email">Email</label>
					  		</div>
			  			</div>
			  		</div>
	  			</div>
		  		 
	  		</div>
	  		<div class="col"> <!-- INSERIRE COLONNA A DESTRA (SECONDA RIGA) -->
	  			<div class="col-dx">
	  				<h1>METTERE I COSTI DEL VIAGGIO</h1>
	  			</div>
	  		</div>
	  		<!-- FINE SECONDA COLONNA -->
	  	</div> <br>
	  	
	  	
		  	
  		
	  	
  	</form>
  </body>
</html>