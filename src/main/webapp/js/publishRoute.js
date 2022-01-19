$(document).ready(
	function() {
		$("#register-form").on("submit", function(event) {
			event.preventDefault();
				ajaxRegisterPost();
		});
	
	
		function ajaxRegisterPost(){
			var userData = {
				data: $("#data").val(),
				destinationS: $("#Email").val(),
				startS: $("#LastName").val(),
				nBiglietti: $("#Biglietti").val(),
				agency: document.getElementById("session").getAttribute("value"),
				time: $("#time").val(),
				startTime: $("#start").val()
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