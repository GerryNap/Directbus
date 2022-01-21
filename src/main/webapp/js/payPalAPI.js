function generatePayment(value){
	 paypal.Buttons({
	    createOrder: function(data, actions) {
	      return actions.order.create({
	        purchase_units: [{
	          amount: {
	            value: value
	          }
	        }]
	      });
	    },onApprove: function(data, actions) {	  
	    return actions.order.capture().then(function(details) {
	      document.getElementById("transactionDone").style.display="block";
		  window.location.href="/jsp/shoppingCart.jsp";
	    });
	  },onCancel: function (data,actions) {
	    return actions.order.capture().then(function(details) {
	      document.getElementById("transactionFailed").style.display="block";
		
		});
	  }
  }).render('#paypal-button-container');
}

