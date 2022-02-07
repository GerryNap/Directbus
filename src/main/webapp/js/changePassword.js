$(document).ready(
	function(){
		$("#changebuttonPassword").on("click", function(event){
			event.preventDefault();
			if($("#newPassword").val() === $("#confirmPassword").val()){
				if($("#oldPassword").val() === $("#newPassword").val()){
					alert("La vecchia password e la nuova password non possono essere uguali");
				} else {		
					ajaxChangePassword();
				}
			} else {
				alert("Le password non corrispondono");
			}
		});
	}
)

function alert(message) {
	var alertPlaceholder = document.getElementById('liveAlertPlaceholder');
	var wrapper = document.createElement('div');
	wrapper.innerHTML = '<div class="alert alert-warning alert-dismissible" role="alert">' + message + '<button type="button" style="font-size:50%" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
	alertPlaceholder.append(wrapper);
	
	$(".alert-dismissible").fadeTo(10000, 500).slideUp(500, function(){
		$(".alert-dismissible").alert("close");
	})
}
		
function getPassword(){
	return {
		oldPassword : $("#oldPassword").val(),
		newPassword : $("#newPassword").val()
	};
}

function ajaxChangePassword(){
	$.ajax({
		type: "POST",
		url: "changePassword",
		contentType : "application/json; charset=utf-8",
        data : JSON.stringify(getPassword()),
        success : function(data) {
            		alert(data);
            	  },
        error: function(data) {
					alert(data);
			   }
	});
}