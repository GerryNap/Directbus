$(document).ready(
    function() {
        $("#search-form").on("submit", function(event) {
            event.preventDefault();
            ajaxLoginPost();
        });

        function ajaxLoginPost() {
	
			var user = $("#andata").val;
        
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "doSearchPage",
                data : JSON.stringify(user)
			});
        }
    }
)