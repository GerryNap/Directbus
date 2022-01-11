$(document).ready(
    function() {
        $("#login-form").on("submit", function(event) {
            event.preventDefault();
            ajaxLoginPost();
        });

        function ajaxLoginPost() {
			var userData = {
				email : $("#Email").val(),
                password : $("#Password").val()
			}
        
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "doLogin",
                data : JSON.stringify(userData)
			});
        }
    })