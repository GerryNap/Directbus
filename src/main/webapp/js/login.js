$(document).ready(
    function() {
        $("#login-form").on("submit", function(event) {
            event.preventDefault();
            ajaxLoginPost();
        });

        function ajaxLoginPost() {
	
			var user = {
				email : $("#Email").val(),
                password : $("#Password").val()
			}
			
			console.log(user.email);
        
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "doLogin",
                data : JSON.stringify(user),
                success: function(data, status, xhr){
							if(data == "success")
								window.location.href = "/";
						 },
				error: function(data, status, xhr){
							window.alert("login error")
						}
			});
        }
    }
)