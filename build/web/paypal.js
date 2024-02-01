
const amountElement = document.getElementById("totalamount")


paypal.Buttons({
    createOrder: function (info, actions) {
     
      return actions.order.create({
        purchase_units: [
          {
          amount: {
            value: amountElement.value,
          },
        
        }]
      });
    },
    onApprove: function(info, actions) {
      
      return actions.order.capture().then(function(details) {
        
        alert('Transaction completed by ' + details.payer.name.given_name);
      });
    }
  }).render('#paypal')


