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


function subscription(value) {
	paypal.Buttons({
		createSubscription: function(data, actions) {
			return actions.subscription.create({
				'plan_id': 'P-2UF78835G6983425GLSM44MA'
			});
		},

		onApprove: function(data, actions) {
			alert('You have successfully created subscription ' + data.subscriptionID);
		}
	}).render('#paypal-button-container');
}