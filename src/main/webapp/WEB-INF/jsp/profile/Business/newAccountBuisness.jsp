<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
<link href="css/myAccount.css" rel="stylesheet"/>
<script src="/js/myProfileAgency.js"></script>

<section class="container-icon" style="margin-top: 10%">
	<div class="first-row row mt-5">
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
			<button class="bi bi-file-person-fill" onclick="loadSummary()"></button>
			<p>DATI PERSONALI</p>
		</div>
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
			<button class="bi bi-calendar-check" onclick="loadActiveTrip()"></button>
			<p style="margin-left: 38%;">TRATTE ATTIVE</p>
		</div>
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
			<button class="bi bi-calendar-x" onclick="loadOldTrip()"></button>
			<p style="margin-left: 33%;">VECCHIE TRATTE</p>
		</div>
	</div>
	<div class="second-row row mt-5">
		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12">
			<button class="bi bi-calendar-plus"
				onclick="window.location.href = '/publicRoute'"></button>
			<p>AGGIUNGI TRATTA</p>
		</div>
	</div>
</section>