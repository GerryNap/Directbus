$(document).ready(
    function() {
        $("#register-form").on("submit", function(event) {
            event.preventDefault();
            console.log("registering");
            ajaxRegisterPost();
        });

        function ajaxRegisterPost() {
			var userData = {
				firstName : $("#FirstName").val(),
				lastName : $("#LastName").val(),
				email : $("#Email").val(),
                password : $("#Password").val()
			}
			
        
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "doRegistration",
                data : JSON.stringify(userData),
				success : function (data) {
					if (data == "success") {
                        console.log("User " + userData.email + " successfully registered.");
                        console.log("Logging in...");
                        window.location.href = "/";
                    }
                }
			});
        }
    }
)