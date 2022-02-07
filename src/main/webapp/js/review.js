
var star = 3;

$(document).ready(
    function() {
        $("#send-review").on("click", function(event) {
            event.preventDefault();
            ajaxLoginPost();
        });
    }
)

function ajaxLoginPost() {
	var review = {
		text : $("#text").val(),
        starNumber : star
	}

	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "doLogin",
        data : JSON.stringify(review),
        success: function(){
					window.location.href = '/myProfile';
				 },
		error: function(){
					alert("Errore durante la pubblicazione della recensione");
				}
	});
}


function insertStar(s) {
	star = s;		
}