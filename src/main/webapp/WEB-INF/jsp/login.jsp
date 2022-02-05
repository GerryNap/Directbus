<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>



<!doctype html>
<html lang="it">
  <head>
  	<c:if test="${user != null}">
  		<c:redirect url = "/myProfile"/>
  	</c:if>
  	
  
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/login-register.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
  
	<body id="body">
	    <%@include file="includes/header.jsp" %>
	    <script src="/js/login.js"></script>
	    
	    <div class="container mt-5 " id="firstContainer">
			<form id="login-form" class="col-xs-12 col-sm-10 col-md-6 col-lg-4 col-xl-3 mx-auto position-relative">
				<center>
					<h1 id="singUp" class="col-xl-5 mx-auto position-relative mb-5">Sign In</h1>
					<div class="image">
						<img alt="" src="images/login_logo.png">
					</div> 
					<br>
				</center>
				
				<div class="form-floating mb-3">
				  <i class="bi bi-envelope-fill"></i>
				  <input type="email" class="form-control" id="Email" placeholder="E-mail" required>
				  <label for="Email">Email</label>
				</div>
				<div class="form-floating mb-3">
				<i class="bi bi-lock-fill"></i>
				  <input type="password" class="form-control" id="Password" placeholder="Password" required>
				  <label for="Password">Password</label>
				</div>
				<center>
					<span id="forgot-password">
						<a href="">Password dimenticata</a>
					</span>
					<br>
					<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3">
						<button id="sendButton" type="submit" class="btn">Sign In</button>						
					</div>													
					<br><br>
					<div id="register">
						<font>Non hai un account?</font>
						<a href="chooseRegistrationType"> Registrati qui</a>
					</div>
				</center>	
			</form>
		</div>	
  	</body>
 </html>