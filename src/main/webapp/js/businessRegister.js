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
	var pIva = document.getElementById("Piva").value;
	if(stringContainsCharacter(pIva)){
		alert("P.iva non valida");
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
        
function stringContainsCharacter(str){
  	if(str.match(/^[0-9]+$/) != null)
  		return false;
	else
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
        data : JSON.stringify(userData),
        success: function(){
					window.location.href = "/";
				 },
		error: function(){
					alert("user alredy exist")
				 }
	});
}



