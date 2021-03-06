<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<script src="/js/myProfileClient.js"></script>
<div class="card col-12 col-sm-12 col-md-12 col-lg-1 col-xl-1 col-xxl-1" id="cardStyle" style="width: 20rem;">
	<div class="list-group list-group-flush">
		<img id="circular-square" src="images/login_logo.png" />
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadSummary()">Riepilogo dell'account</button>					
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadReserveation()">Prenotazioni</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="loadTravelHistory()">Storico dei viaggi</button>
		<button type="button" id="buttonProfile" class="btn list-group-item mt-3" onclick="window.location.href = '/logout'">Esci</button>
	</div>	
</div>	