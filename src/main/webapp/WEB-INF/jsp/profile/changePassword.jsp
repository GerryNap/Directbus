<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script src="/js/changePassword.js"></script>
<form id="changePasswordForm">
	<div class="list-group list-group-flush col">				
			<div class="row">   
				<div class="col-12 col-sm-8 col-md-8 col-lg-8 col-xl-8 mt-3">				
					<input type="password" id="oldPassword" name = "newPassword" placeholder="Old Password" required/>
				</div>
				<div class="col-12 col-sm-8 col-md-8 col-lg-8 col-xl-8 mt-3">				
					<input type="password" id="newPassword" name = "oldPassword" placeholder="New Password" required/>
				</div>
				<div class="col-12 col-sm-8 col-md-8 col-lg-8 col-xl-8 mt-3">
					<input type="password" id="confirmPassword" placeholder="Confirm New Password" required/>
				</div>
				<div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1 mt-3" style=" margin-left:6%;">
					<button id="change-button-password" type="button" class="btn">Cambia</button>					
				</div>
			</div>
		</div>
</form>