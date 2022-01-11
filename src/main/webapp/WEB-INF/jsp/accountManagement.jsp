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
	    <form method="get" action="accountManagement" class="position-relative">
	    
			<div class="container mt-5 " id="firstContainer">
				<div class="row">											
				    <%@include file="includes/userCard.jsp"  %>
				    <div class="col" style="width:5; margin-top:7%;">							   	
						<div class="list-group list-group-flush mt-5 col">
							<div id="gestioneAccount" class="list-group-item mt-3" style="background-color:transparent;">						
								<h1 id="buttonProfile">Prenotazioni</h1>
							</div>
							<div id="profilo" class="list-group-item mb-3" style="background-color:transparent;">
						    	<h2 id="buttonProfile">Le mie prenotazioni</h2>
						    </div>					    
						    <div>
							   <div class="row">
							   	<div id="cardStyle" class="card mb-3" style="max-width: 540px; margin-left:5%;">
								  <div class="row g-0">
								    <div class="col-md-4" style="margin-top:7%;">
								    	<div id="circular-square" style="background-color:black;">
								      		<img src="images/icona.png" class="img-fluid rounded-start" alt="">
								      	</div>
								    </div>
								    <div class="col-md-8">
								      <div class="card-body">
								        <h5 class="card-title" id="buttonProfile">Nome agenzia</h5>
								        <p class="card-text" id="buttonProfile">Andata: ...</p>
								        <p class="card-text" id="buttonProfile">Ritorno: ...</p> 
								        <p class="card-text" id="buttonProfile"><span class="badge bg-warning text-dark">In corso</span></p>
								      </div>
								    </div>
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