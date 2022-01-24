$(document).ready(
	function(){
		$("#changePasswordForm").on("submit", function(event){
			event.preventDefault();
			
			if($("#newPassword").val() === $("#confirmPassword").val()){
				ajaxChangePassword()
			} else {
				window.alert("Le password non corrispondono");
			}
		});
		
		function getPassword(){
			return {
				oldPassword : $("#oldPassword").val(),
				newPassword : $("#newPassword").val()
			};
		}
		
		function ajaxChangePassword(){
			$.ajax({
				type: "POST",
				url: "changePassword",
				contentType : "application/json; charset=utf-8",
                data : JSON.stringify(getPassword()),
                success : function () {
                    		window.location.href = "/account";
                    	  }
                    	  
			});
		}
		
	}
)