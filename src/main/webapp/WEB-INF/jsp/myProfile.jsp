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
	    <form method="get" action="myProfile" class="mx-auto position-relative">
	    
			<div class="container mt-5 " id="firstContainer">
				<div class="row">						
					
				    <%@include file="includes/userCard.jsp"  %>
				    <div class="col" style="width:5; margin-top:7%;">							   	
					<div class="list-group list-group-flush mt-5 col">
						<div id="gestioneAccount" class="list-group-item mt-3" style="background-color:transparent;">						
							<h1 id="buttonProfile">Riepilogo dell'account</h5>
						</div>
						<div id="profilo" class="list-group-item mb-3" style="background-color:transparent;">
					    	<h2 id="buttonProfile">Profilo</h3>
					    </div>					    
					    <div>
						    <div class="row">
							    <div class="list-group-item col" style="background-color:transparent; ">
							    	<h5 id="buttonProfile">Nome</h5>					    	
								</div>
								<div id="nome" class="list-group-item col" style="background-color:transparent;">
							    	<label id="buttonProfile">Nome</label>					    	
								</div>
							</div>
							<div class="row">
								<div class="list-group-item col" style="background-color:transparent;">
									<h5 id="buttonProfile">Cognome</h5>
							    </div>
							    <div id="cognome" class="list-group-item col" style="background-color:transparent;">
									<label id="buttonProfile">Cognome</label>
							    </div>
						    </div>
						    <div class="row">
							    <div	class="list-group-item col" style="background-color:transparent;">
								    <h5 id="buttonProfile">Email</h5>
							    </div>
							    <div id="email" class="list-group-item col" style="background-color:transparent;">
								    <label id="buttonProfile">Email</label>
							    </div>
							</div>
						    <div class="row">
							    <div class="list-group-item col" style="background-color:transparent;">
								    <h5 id="buttonProfile">Password</h5>
							    </div>
							    <div id="password" class="list-group-item col" style="background-color:transparent;">
								    <label id="buttonProfile">Password</label>
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