<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
<link href="css/myAccount.css" rel="stylesheet"/>
<script src="/js/myProfileClient.js"></script>
<section id="container-icon-client">
	<div class="row mt-5">
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
			<button type="button" class="bi bi-file-person-fill"
				onclick="loadSummary()"></button>
			<p>DATI PERSONALI</p>
		</div>
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
			<button type="button" class="bi bi-calendar-event"
				onclick="loadReserveation()"></button>
			<p>PRENOTAZIONI</p>
		</div>
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
			<button type="button" class="bi bi-card-checklist" onclick="loadTravelHistory()"></button>
			<p style="margin-left: 32%;">STORICO DEI VIAGGI</p>
		</div>
	</div>
</section>