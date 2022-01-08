<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/userRegistration.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
  
	<body id="body">
	    <%@include file="includes/header.jsp" %>
	    
		<div class="container mt-5 " id="firstContainer">
			<form action="doLogin" method="post" class="col-xs-12 col-sm-10 col-md-6 col-lg-4 col-xl-3 mx-auto position-absolute top-50 start-50 translate-middle">
				<center>
					<br><br>
					<h1 id="singUp" class="col-xl-5 mx-auto position-relative mb-5">Sign in</h1>
					<nav class="image">
	    				<img alt="" src="images/icona.png">
	    			</nav>
				</center>
				<div class="form-floating mb-3">
				  <i class="bi bi-envelope-fill"></i>
				  <input type="email" class="form-control" id="Email" placeholder="E-mail" name="email">
				  <label for="Email">Email</label>
				</div>
				<div class="form-floating">
				<i class="bi bi-lock-fill"></i>
				  <input type="password" class="form-control" id="Password" placeholder="Password" name="pass">
				  <label for="Password">Password</label>
				</div>
			<br>
			<center>
			<span id="forgot-password">
				<a href="">Password dimenticata</a>
			</span>
			</center> <br>
			<center>
				<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3">
					<button id="sendButton" type="submit" class="btn">Sing In</button>
				</div>
			</center>
			<br>
			<center>
			<div id="register">
				<font color="white">Non hai un account?</font>
				<a href=""> Registrati qui</a>
			</div>
			</center>
			</div>			
		</form>		
  </body>
 </html>