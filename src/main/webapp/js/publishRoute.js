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
				agency: $("#FirstName").val(),
				data: $("#data").val(),
				destinationS: $("#Email").val(),
				startS: $("#LastName").val(),
				nBiglietti: $("#Biglietti").val()
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
					window.alert("cose")
				}
			});
		}
	}
)