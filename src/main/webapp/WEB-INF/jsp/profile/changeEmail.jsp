<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script src="/js/changeEmail.js"></script>
<form class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" id="changeEmailForm">
	<div class="list-group list-group-flush mt-5 col">		
		<div>
			<div class="row">   
				<div class="col-md-12">
					<input type="hidden" id="oldEmail" name="oldEmail" value="${user.email}"/>
					<input type="text" id="newEmail" name = "newEmail" placeholder="New Email" required/>
					<input type="password" id="password" name = "password" placeholder="Password" required/>
					<button id="changebutton" type="button">Cambia</button>
				</div>
			</div>
		</div>
	</div>
</form>