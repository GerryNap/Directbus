<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<script src="/js/changePassword.js"></script>
<form class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8 col-xxl-9" id="changePasswordForm">
	<div class="list-group list-group-flush mt-5 col">		
		<div>
			<div class="row">   
				<div class="col-md-12">
					<input type="password" id="oldPassword" name = "newPassword" placeholder="Old Password" required/>
					<input type="password" id="newPassword" name = "oldPassword" placeholder="New Password" required/>
					<input type="password" id="confirmPassword" placeholder="Confirm New Password" required/>
					<button id="madonnabastarda" type="button">Cambia</button>
				</div>
			</div>
		</div>
	</div>
</form>