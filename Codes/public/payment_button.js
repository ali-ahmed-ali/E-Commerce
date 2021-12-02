paypal.Buttons({
    style : {
        color: 'blue',
        shape: 'pill'
    },
    createOrder: function (data, actions) {
        return actions.order.create({
            purchase_units : [{
                amount: {
                    value: '0.1'
                }
            }]
        });
    },
    onApprove: function (data, actions) {
        return actions.order.capture().then(function (details) {
            console.log(details)
            window.location.replace("http://localhost/E-Commerce-Assignment/Codes/public/thank_you.php?tx=345354&amt=345&cc=Rupee&st=Completed")
        })
    },
    onCancel: function (data) {
        return actions.order.capture().then(function (details) {
            console.log(details)
            window.location.replace("http://localhost/E-Commerce-Assignment/Codes/public/thank_you.php?tx=345354&amt=345&cc=Rupee&st=Completed")
        })
    }
}).render('#paypal-payment-button');
