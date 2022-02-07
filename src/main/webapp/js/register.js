$(document).ready(
    function() {
        $("#register-form").on("submit", function(event) {
            event.preventDefault();
        
            if(formValidation())
            	ajaxRegisterPost();
        });
    }
)

function alert(message) {
	var alertPlaceholder = document.getElementById('liveAlertPlaceholder');
	var wrapper = document.createElement('div');
	wrapper.innerHTML = '<div class="alert alert-warning alert-dismissible" role="alert">' + message + '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
	alertPlaceholder.append(wrapper);
	
	$(".alert-dismissible").fadeTo(10000, 500).slideUp(500, function(){
		$(".alert-dismissible").alert("close");
	})
}
        
function formValidation(){
	var firstName = document.getElementById("FirstName").value;
	if(stringContainsNumber(firstName)){
		alert("Nome non valido");
		return false;
	}
	
	var lastName = document.getElementById("LastName").value;
	if(stringContainsNumber(lastName)){
		alert("Cognome non valido");
		return false;
	}
	
	var psw = document.getElementById("Password").value;
	var pswc = document.getElementById("PasswordCheck").value;
	if(psw !== pswc){
		alert("Le password non coincidono");
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
        success: function(){
					window.location.href = "/notVerified";
				 },
		error: function(){
					alert("user alredy exist");
				 }
	});
}

function stringContainsNumber(str){
  	if (str.match(/\d+/g) != null)
  	  	return true;
   	else
  		return false;
}