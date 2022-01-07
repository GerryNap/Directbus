<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<html lang="it">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/userRegistration.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
    <title>DirectBus</title>
  </head>
  
	<body id="body">
		<nav class="navbar navbar-dark navbar-expand bg-dark navigation-clean">
	        <div class="container"><a class="navbar-brand" href="#">DirectBus</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"></button>
	            <div class="collapse navbar-collapse" id="navcol-1"><a class="btn btn-dark ms-auto" role="button" href="#">Sign In</a></div>
	        </div> 
	    </nav>
	    
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
 </html>