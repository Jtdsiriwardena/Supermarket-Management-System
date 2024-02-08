<%-- 
    Document   : pay
    Created on : Aug 13, 2023, 3:50:54 PM
    Author     : Dilmith Siriwardena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://www.paypal.com/sdk/js?client-id=ASt7pBphS-mcnLsrss4exNfkn3UAmZxl5msMGF1yWAKRffn37EnYIxHapXvxUtA-CQiCijFH3i-X7XPf"></script>
        <link href="css/pay.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h2 class="heading">Your Total</h2>
        <div class="center-form">
        <form style="justify-content:center; display: flex;">
            
    <input type="number" name="totalamount" id="totalamount"> <br> <br>
    </div>
        
        </form>

        <div id="paypal" class="pay"></div>
          
    
       <script src="paypal.js" type="text/javascript"></script>
    </body>
</html>
