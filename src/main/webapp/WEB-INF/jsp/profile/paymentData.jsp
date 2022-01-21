<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<script src="/js/payPalAPI.js"></script>

<!DOCTYPE html>
<div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" style="width:5; margin-top:7%;" id="paymentData">							   	
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
					<c:choose>
				       	<c:when test="${user.paypalMail == null}">	
						    <div id="password" class="list-group-item col" style="background-color:transparent;">
							    <label id="buttonProfile">Nessun account</label>
						    </div>
							<div class="list-group-item col" style="background-color:transparent;">
						    	<button id="sendButton" type="button" style="font-size:13px;" class="btn" onclick="subscription()">Aggiungi il tuo account PayPal</button>
						    </div>
				       	</c:when>
				       	<c:otherwise>
						    <div id="password" class="list-group-item col" style="background-color:transparent;">
							    <label id="buttonProfile">${user.paypalMail}</label>
						    </div>
							<div class="list-group-item col" style="background-color:transparent;">
						    	<button id="sendButton" type="button" style="font-size:13px;" class="btn">Modifica il tuo account PayPal</button>
						    </div>
				       	</c:otherwise>
					</c:choose>
				</div>							
			</div>					   							  							  						  				 									
		</div>
	</div>
</div>