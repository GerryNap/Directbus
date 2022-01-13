$(document).ready(
	function() {
		$("#register-form").on("submit", function(event) {
			event.preventDefault();
			
			//if(formValidation())
				ajaxRegisterPost();
		});
		
		/*function formValidation(){
			
		}*/
	
	
		function ajaxRegisterPost(){
			var userData = {
				cod: 1,
				agency: $("#FirstName").val(),
				startS: $("#LastName").val(),
				destinationS: $("#Email").val(),
				nBiglietti: 1,
				data: $("data").val()
			}
			
			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: "doRoute",
				data: JSON.stringify(userData),
				success: function(data, status, xhr){
					if (data == "success")
						window.location.href = "/";
				},
				error: function(data, status, xhr){
					window.alert("user alredy exist")
				}
			});
		}
	}
)