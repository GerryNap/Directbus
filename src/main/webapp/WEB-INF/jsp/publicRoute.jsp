<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
  	<%@include file="includes/import.jsp" %>
  	
    <link href="css/login-register.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
	
    <title>DirectBus</title>
  </head>
	<body id="body">
		<%@include file="includes/header.jsp" %>
	    
		<div class="container mt-5 " id="firstContainer">
			<center>
				<div class="col-xl-4 mx-auto position-relative">
				<h1 id="public" class="col-xl-5 mx-auto position-relative mb-5">Pubblica una tratta</h1>
				</div>
			</center>
			<div class="col-md-8 col-lg-6 col-xl-5 mx-auto position-relative">
				<div  class="form-floating mb-3">
					<i class="bi bi-file-person-fill"></i>
					<input class="form-control" id="FirstName" placeholder="First Name">
					<label for="FirstName">Name</label>
				</div>	
				<div  class="form-floating mb-3">
					<i class="bi bi-wallet2"></i>
					<input class="form-control" id="LastName" placeholder="Last Name">
					<label for="LastName">P.iva</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-map-fill"></i>
				  <input type="email" class="form-control" id="Email" placeholder="E-mail">
				  <label for="Email">Address</label>
				</div>
				<div class="form-floating mb-3">
				  <i class="bi bi-envelope-fill"></i>
				  <input type="email" class="form-control" id="Email" placeholder="E-mail">
				  <label for="Email">Email</label>
				</div>
				<div class="form-floating">
				<i class="bi bi-lock-fill"></i>
				  <input type="password" class="form-control" id="Password" placeholder="Password">
				  <label for="Password">Password</label>
				</div>
				<center>
					<div class="btn-group col-md-4 col-lg-3 col-xl-3 mt-3">
						<button id="sendButton" type="submit" class="btn">Sign Up</button>
					</div>
				</center>
			</div>			
		</div>		
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>