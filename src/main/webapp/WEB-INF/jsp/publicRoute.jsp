<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
<%
    session=request.getSession(false);
    if(session.getAttribute("user")==null)
        response.sendRedirect("/");
    if(!session.getAttribute("userType").equals("Agency"))
        response.sendRedirect("/");
%>
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/login-register.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
	<body id="body">
		<%@include file="includes/header.jsp" %>
	    <script src="/js/publishRoute.js"></script>
		<div class="container mt-5 " id="firstContainer">
			<form id="register-form">
			<center>
				<div class="col-xl-4 mx-auto position-relative">
				<h1 id="public" class="col-xl-5 mx-auto position-relative mb-5" style="color: white;">Pubblica una tratta</h1>
				</div>
			</center>
			<%String email = request.getSession().getAttribute("userEmail").toString(); %>
			<input type="hidden" id="session" value=<%=email%> >
			<div class="col-md-8 col-lg-6 col-xl-5 mx-auto position-relative">
				<div  class="form-floating mb-3">
					<i class="bi bi-file-person-fill"></i>
					<input class="form-control" id="FirstName" placeholder="Azienda">
					<label for="FirstName">Azienda</label>
				</div>	
				<div  class="form-floating mb-3">
					<i class="bi bi-wallet2"></i>
					<input class="form-control" id="LastName" placeholder="Stazione di partenza">
					<label for="LastName">Stazione di partenza</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-map-fill"></i>
				  <input type="text" class="form-control" id="Email" placeholder="Stazione d'arrivo">
				  <label for="Email">Stazione d'arrivo</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-map-fill"></i>
				  <input type="number" class="form-control" id="Biglietti" min="20" max="50" placeholder="Numero biglietti">
				  <label for="Biglietti">Numero biglietti</label>
				</div>
				<div class="form-floating mb-3">
				  <input placeholder="Data" type="date" id="data" class="form-control">
				  <label for="data">Data</label>
				</div>
				<div class="form-floating mb-3">
				  <input placeholder="Durata" type="text" id="time" class="form-control">
				  <label for="time">Durata</label>
				</div>
				<center>
					<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3">
						<button id="sendButton" type="submit" class="btn">Pubblica</button>
					</div>
				</center>
			</div>		
			</form>	
		</div>
  </body>
</html>