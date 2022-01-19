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
        
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "doLogin",
                data : JSON.stringify(user),
                success: function(data){
							if(data == "client" || data=="business")
								window.location.href = "/";
						 },
				error: function(){
							window.alert("user not found");
						}
			});
        }
    }
)