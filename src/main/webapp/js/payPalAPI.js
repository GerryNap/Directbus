
function generatePayment(values){
	 paypal.Buttons({
    createOrder: function(data, actions) {
      // Set up the transaction
      return actions.order.create({
        purchase_units: [{
          amount: {
            value: '0.01'//values
          }
        }]
      });
    },onApprove:function(data,action){
	return action.order.capture().then(function(details){document.getElementById("Alert").style.display="block";})
	}
  }).render('#paypal-button-container');
	
}