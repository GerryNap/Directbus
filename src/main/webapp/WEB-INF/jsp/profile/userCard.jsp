<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<script src="/js/userCard.js"></script>
<div class="card" id="cardStyle" style="width: 20rem;">
	<div class="list-group list-group-flush">
		<div id="circular-square" style="background-color:black;">
			<img class="circular-square" src="images/login_logo.png" />
		</div>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadSummary()">Riepilogo dell'account</button>					
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3">Prenotazioni</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3">Storico dei viaggi</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3">Dati per il pagamento</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3">Esci</button>
	</div>	
</div>	