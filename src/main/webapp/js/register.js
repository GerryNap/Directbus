$(document).ready(
    function() {
        $("#register-form").on("submit", function(event) {
            event.preventDefault();
        
            if(formValidation())
            	ajaxRegisterPost();
        });
        
        function formValidation(){
			var firstName = document.getElementById("FirstName").value;
			if(stringContainsNumber(firstName)){
				window.alert("Nome non valido");
				return false;
			}
			
			var lastName = document.getElementById("LastName").value;
			if(stringContainsNumber(lastName)){
				window.alert("Cognome non valido");
				return false;
			}
			
			var psw = document.getElementById("Password").value;
			var pswc = document.getElementById("PasswordCheck").value;
			if(psw !== pswc){
				window.alert("Le password non coincidono");
				return false;
			}
			
			return true;
		}

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
                success: function(data, status, xhr){
							if(data == "success")
								window.location.href = "/";
						 },
				error: function(data, status, xhr){
							window.alert("user alredy exist")
						 }
			});
        }
        
        function stringContainsNumber(str){
		  	if (str.match(/\d+/g) != null)
		  	  	return true;
		   	else
		  		return false;
		}
    }
)