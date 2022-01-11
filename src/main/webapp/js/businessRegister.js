$(document).ready(
    function() {
        $("#register-form").on("submit", function(event) {
            event.preventDefault();
            if(formValidation())
            	ajaxRegisterPost();
        });
        
        function formValidation(){
			var pIva = document.getElementById("Piva").value;
			console.log(typeof pIva);
			if(stringContainsCharacter(pIva)){
				window.alert("P.iva non valida");
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
				name : $("#Name").val(),
				pIva : $("#Piva").val(),
				address : $("#Address").val(),
				email : $("#Email").val(),
                password : $("#Password").val()
			}
        
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "doBusinessRegistration",
                data : JSON.stringify(userData)
			});
        }
        
        function stringContainsCharacter(str){
		  	if(str.match(/^[0-9]+$/) != null)
		  		return false;
    		else
    			return true;
		}
    })