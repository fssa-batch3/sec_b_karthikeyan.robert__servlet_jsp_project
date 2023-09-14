<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Payment Page</title>
        <link rel="stylesheet" href="../assets/css/card_details.css">
    </head>
    <body>
        <div class="container">
            <h1>Payment Details</h1>
            <form id="payment-form">
                <label for="card-holder">Card Holder Name</label>
                <input type="text" id="card-holder" name="card-holder" placeholder="Enter card holder name">
                <label for="card-number">Card Number</label>
                <input type="text" id="card-number" name="card-number" placeholder="Enter card number">
                <label for="expiry-date">Expiry Date</label>
                <input type="text" id="expiry-date" name="expiry-date" placeholder="MM / YY">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="Enter CVV">
                <button type="submit">Submit Payment</button>
            </form>
        </div>

        <script >
        const form = document.getElementById("payment-form");
        form.addEventListener("submit", submitForm);

function submitForm(event) {
          event.preventDefault();
          const cardHolder = document.getElementById("card-holder").value.trim();
          const cardNumber = document.getElementById("card-number").value.trim();
          const expiryDate = document.getElementById("expiry-date").value.trim();
          const cvv = document.getElementById("cvv").value.trim();

          if (cardHolder === "") {
            alert("Please enter card holder name");
            return;
          }

          if (cardNumber === "") {
            alert("Please enter card number");
            return;
          }

          if (expiryDate === "") {
            alert("Please enter expiry date");
            return;
          }

          if (cvv === "") {
            alert("Please enter CVV");
            return;
          }

          alert("Payment submitted successfully");
          form.reset();
}
    </script>
    </body>
</html>