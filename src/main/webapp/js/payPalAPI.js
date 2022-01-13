
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
    },onApprove:function(data,action){
	return action.order.capture().then(function(details){
		document.getElementById("paymentAlert").style.display="block";});
	}
  }).render('#paypal-button-container');
}