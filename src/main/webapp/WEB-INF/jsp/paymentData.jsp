<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/login-register.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
	<body id="body">
	    <%@include file="includes/header.jsp" %>
	    <form method="get" action="paymentData" class="position-relative">
	    
			<div class="container mt-5 " id="firstContainer">
				<div class="row">						
					
				    <%@include file="includes/userCard.jsp"  %>
				    <div class="col" style="width:5; margin-top:7%;">							   	
					<div class="list-group list-group-flush mt-5 col">
						<div id="gestioneAccount" class="list-group-item mt-3" style="background-color:transparent;">						
							<h1 id="buttonProfile">Dati per il pagamento</h1>
						</div>
						<div id="profilo" class="list-group-item mb-3" style="background-color:transparent;">
					    	<h5 id="buttonProfile">Aggiungi o rimuovi il metodo di pagamento.</h5>					    					    
				    <div style="margin-top:5%;">
					    <div class="row">
						    <div class="list-group-item col" style="background-color:transparent;">
							    <h5 id="buttonProfile" style="margin-left:-2%;">Account PayPal</h5>
							</div>
						    <div id="password" class="list-group-item col" style="background-color:transparent;">
							    <label id="buttonProfile">Generalità</label>
						    </div>
							<div class="list-group-item col" style="background-color:transparent;">
						    	<button id="sendButton" type="submit" style="font-size:13px;" class="btn">Aggiungi il tuo account PayPal</button>
						    </div>
						</div>							
					</div>					   							  							  						  				 									
				</div>
			</div>	
		</form>	
 	</body>
 </html>