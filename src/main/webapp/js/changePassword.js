$(document).ready(
	function(){
		$("#changebutton").on("click", function(event){
			event.preventDefault();
			if($("#newPassword").val() === $("#confirmPassword").val()){
				if($("#oldPassword").val() === $("#newPassword").val()){
					window.alert("La vecchia password e la nuova password non possono essere uguali");
				} else {		
					ajaxChangePassword();
				}
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
                success : function(data) {
                    		window.alert(data);
                    	  },
                error: function(data) {
							window.alert(data);
					   }
			});
		}
		
	}
)