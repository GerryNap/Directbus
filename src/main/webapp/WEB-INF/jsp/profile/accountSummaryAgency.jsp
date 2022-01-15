<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<div class="col" id="accountSummary" style="width:5; margin-top:7%;">							   	
					<div class="list-group list-group-flush mt-5 col">
						<div id="gestioneAccount" class="list-group-item mt-3" style="background-color:transparent;">						
							<h1 id="buttonProfile">Riepilogo dell'account</h1>
						</div>
						<div id="profilo" class="list-group-item mb-3" style="background-color:transparent;">
					    	<h2 id="buttonProfile">Profilo aziendale</h2>
					    </div>					    
					    <div style="margin-left:2%;">
						    <div class="row">
							    <div class="list-group-item col" style="background-color:transparent; ">
							    	<h5 id="buttonProfile">Nome</h5>					    	
								</div>
								<div id="nome" class="list-group-item col" style="background-color:transparent;">
							    	<label id="buttonProfile">${user.name}</label>					    	
								</div>
								<div class="list-group-item col" style="background-color:transparent;">
							    	<br>
							    </div>
							</div>
							<div class="row">
								<div class="list-group-item col" style="background-color:transparent;">
									<h5 id="buttonProfile">Indirizzo</h5>
							    </div>
							    <div id="cognome" class="list-group-item col" style="background-color:transparent;">
									<label id="buttonProfile">${user.address}</label>
							    </div>
							    <div class="list-group-item col" style="background-color:transparent;">
							    	<br>
							    </div>
						    </div>
							<div class="row">
								<div class="list-group-item col" style="background-color:transparent;">
									<h5 id="buttonProfile">P.IVA</h5>
							    </div>
							    <div id="cognome" class="list-group-item col" style="background-color:transparent;">
									<label id="buttonProfile">${user.pIva}</label>
							    </div>
							    <div class="list-group-item col" style="background-color:transparent;">
							    	<br>
							    </div>
						    </div>
						    <div class="row">
							    <div	class="list-group-item col" style="background-color:transparent;">
								    <h5 id="buttonProfile">Email</h5>
							    </div>
							    <div id="email" class="list-group-item col" style="background-color:transparent;">
								    <label id="buttonProfile">${user.email}</label>
							    </div>
							    <div class="list-group-item col" style="background-color:transparent;">
							    	<button id="sendButton" type="submit" style="font-size:13px;" class="btn">Modifica</button>
							    </div>
							</div>
						    <div class="row">
							    <div class="list-group-item col" style="background-color:transparent;">
								    <h5 id="buttonProfile">Password</h5>
							    </div>
							    <div id="password" class="list-group-item col" style="background-color:transparent;">
								    <label id="buttonProfile">Password</label>
							    </div>
							    <div class="list-group-item col" style="background-color:transparent;">
							    	<button id="sendButton" type="submit" style="font-size:13px;" class="btn">Modifica</button>
							    </div>
						    </div>
					    </div>
					</div>	
					</div>