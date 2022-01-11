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
				window.alert("Inserisci nuovamente il tuo nome");
				return false;
			}
			
			var lastName = document.getElementById("LastName").value;
			if(stringContainsNumber(lastName)){
				window.alert("Inserisci nuovamente il tuo cognome");
				return false;
			}
			
			var psw = $("#Password").val();
			var pswc = $("#PasswordCheck").val();
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
                data : JSON.stringify(userData)
			});
        }
        
        function stringContainsNumber(str){
		  	let matchPattern = str.match(/\d+/g);
		  	if (matchPattern != null)
		  	  	return true;
		   	else
		  		return false;
		}
    })