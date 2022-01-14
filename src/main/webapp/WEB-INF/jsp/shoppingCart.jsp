
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/login-register.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	<script src="/js/payPalAPI.js"></script>
	<script src="https://www.paypal.com/sdk/js?currency=EUR&client-id=AcfPOSt-f_F7k7g1XY5IhhuCFzfSXZlB4aqFLR0dzhATegX9IgHcZHRQtZRXxlumKteQ-9XTj-UCv4C0"></script>
	
    <title>DirectBus</title>
  </head>
  <body id="body">
	<%@include file="includes/header.jsp" %>
	<form method="get" action="shoppingCart"  class="mt-5">
	
	
		<div class="row mx-auto position-relative">
			<div class="col" style="margin:10%;">
			<h1 style="color:#FFCC00;">Checkout</h1>
			<div class="mt-5">
				<hr style="color:#FFCC00;">
				<h3 style="color:#FFCC00;">Riepilogo ordine</h3>
				<!-- inserire riepilogo ordine -->
			</div>
			<div class="mt-5">
				<hr style="color:#FFCC00;">
				<h3 style="color:#FFCC00;">Metodo di pagamento</h3>
				<input type="text" id="payInput"/>				
				<button id="sendButton" type="button" class="btn mt-3" style="width:100%;" onclick="generatePayment(document.getElementById('payInput').value)">Checkout</button>								
				<div id="transactionDone" class="alert alert-success mt-3" role="alert" style="display:none;">Pagamento avvenuto con successo!</div>
				<div id="transactionFailed" class="alert alert-danger mt-3" role="alert" style="display:none;">L'acquisto è stato interrotto</div>
			</div>
			<div id="paypal-button-container" class="row mt-3"></div>
			
			</div>
			<div class="col" style="margin-top:10%;">
				<div class="card" style="width: 18rem;" id="cardStyle">
				  <div class="card-header">
				    <h5 class="card-title mb-2" style="color:#FFCC00;">Carrello<a onClick="location.href='buyTicket'" class="card-link" style="color:#FFCC00; margin-top:-5%; margin-left:40%;">Modifica</a></h5>
				    <p class="card-text mb-2" style="color:#FFCC00;">Subtotale <label style="color:#FFCC00; margin-top:-5%; margin-left:47%;">€19.00</label></p>
				    <p class="card-text mb-2" style="color:#FFCC00;">Tasse <label style="color:#FFCC00; margin-top:-5%; margin-left:58%;">€1.00</label></p>
				    <p class="card-text mb-2" style="color:#FFCC00;">Totale Ordine <label style="color:#FFCC00; margin-top:-5%; margin-left:37%;">€20.00</label></p>				    				    
				  </div>
				  <div class="card-body" style="color:white;">
				  	<div class="row mb-2">
				  		<div class="col">
				  			<h6 style="color:#FFCC00;">ITEM</h6>
				  		</div>
				  		<div class="col">
				  			<h6 style="color:#FFCC00;">QTY</h6>
				  		</div>
				  		<div class="col">
				  			<h6 style="color:#FFCC00;">PREZZO</h6>
				  		</div>
				  	</div>
				  	<hr style="margin-top:-5%;">
				  	<div class="row mb-2">
				  		<div class="col">
				  			<h6 style="color:#FFCC00;">Cod. Biglietto</h6>
				  		</div>
				  		<div class="col">
				  			<h6 style="color:#FFCC00;">1</h6>
				  		</div>
				  		<div class="col">
				  			<h6 style="color:#FFCC00;">€19.00</h6>
				  		</div>
				  	</div>
				  </div>
				</div>
			</div>
		</div>
	</form>
  </body>
</html>