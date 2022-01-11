$(document).ready(
    function() {
        $("#register-form").on("submit", function(event) {
            event.preventDefault();
            if(pswValidation())
            	ajaxRegisterPost();
        });
        
        function pswValidation(){
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
				name : $("#Name").val(),
				pIva : $("#Piva").val(),
				address : $("#Address").val(),
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
    })