function generateReviews() {
	email = document.getElementById("email").textContent;
	$.ajax({
		type: "POST",
		url: "getPartnerReviews",
		data: {"text": email},
		success: function() {
			$("#reviews").load(document.URL+'  #reviews');
			console.log(email)
		},
		error: function() {
			alert("Nessuna recensione trovata", "primary");
		}
	});
}