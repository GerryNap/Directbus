$(document).ready(
    function() {
        $("#login-form").on("submit", function(event) {
            event.preventDefault();
            ajaxLoginPost();
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

function ajaxLoginPost() {
	var user = {
		email : $("#Email").val(),
        password : $("#Password").val()
	}

	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "doLogin",
        data : JSON.stringify(user),
        success: function(){
					window.location.href = "/";
				 },
		error: function(){
					alert("Password o email errata");
				}
	});
}