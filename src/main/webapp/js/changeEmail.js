$(document).ready(
	function(){
		$("#changebutton").on("click", function(event){
			event.preventDefault();
			if($("#oldEmail").val() === $("#newEmail").val()){
				window.alert("La vecchia email e la nuova email non possono essere uguali");
			} else {
				ajaxChangeEmail();
			}
		});
		
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
                    		window.alert(data);
                    	  },
                error: function(data) {
							window.alert(data);
					   }
			});
		}
	}
)