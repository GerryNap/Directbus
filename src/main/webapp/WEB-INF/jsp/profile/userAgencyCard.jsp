<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<script src="/js/myProfileAgency.js"></script>
<div class="card position-relative" id="cardStyle" style="width: 20rem; margin-left:5%;">
	<div class="list-group list-group-flush">
		<img id="circular-square" src="images/login_logo.png" />
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadSummary()">Riepilogo dell'account</button>					
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadActiveTrip()">Tratte attive</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadOldTrip()">Vecchie tratte</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadPaymentData()">Dati per il pagamento</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="window.location.href = '/logout'">Esci</button>
	</div>	
</div>	