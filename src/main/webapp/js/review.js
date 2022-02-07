
var star;

$(document).ready(
	
    function() {
        $("#send-review").on("click", function(event) {
            event.preventDefault();
            const queryString = window.location.search;
			const url = new URLSearchParams(queryString);
            ajaxLoginPost(url);
        });
    }
)

function ajaxLoginPost(url) {
	var review = {
		text : $("#text").val(),
        starNumber : star,
        tratta: url.get("cod"),
        cliente: url.get("email")
	}

	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "doReview",
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