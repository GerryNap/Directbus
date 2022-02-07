$(document).ready(
	function(){
		$("#changebuttonEmail").on("click", function(event){
			event.preventDefault();
			if($("#oldEmail").val() === $("#newEmail").val()){
				alert("La vecchia email e la nuova email non possono essere uguali");
			} else {
				ajaxChangeEmail();
			}
		});
	}
)

function alert(message) {
	var alertPlaceholder = document.getElementById('liveAlertPlaceholder');
	var wrapper = document.createElement('div');
	wrapper.innerHTML = '<div class="alert alert-warning alert-dismissible" role="alert">' + message + '<button style = "font-size: 100%" type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button></div>';
	alertPlaceholder.append(wrapper);
	
	$(".alert-dismissible").fadeTo(10000, 500).slideUp(500, function(){
		$(".alert-dismissible").alert("close");
	})
}
		
function getData(){
	return {
		password : $("#password").val(),
		newEmail : $("#newEmail").val()
	};
}

function ajaxChangeEmail(){
	$.ajax({
		type: "POST",
		url: "changeEmail",
		contentType : "application/json; charset=utf-8",
        data : JSON.stringify(getData()),
        success : function(data) {
            		alert(data);
            	  },
        error: function(data) {
					alert(data);
			   }
	});
}