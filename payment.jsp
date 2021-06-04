<%
   if(session.getAttribute("email")==null)
   {
       response.sendRedirect("index.html");
   }
   else
   {
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <section class="body">
        <nav class="navbar h-nav">
        
                    <div id="searchbar">
                         <img src="image/flag.png" alt="">
                    </div>
    
                    <ul class="nav v-class">
                         <li class="item"><a href="index.html">HOME</a></li>
                         <li class="item"><a href="service.html">SERVICES</a></li>
                         <li class="item"><a href="about.html">ABOUT&nbspUS</a></li>
                         <li class="item"><a href="contact.html">CONTACT&nbspUS</a></li>
                    </ul> 
    
                    <div class="burger">
                        <div class="line"></div>
                        <div class="line"></div>
                        <div class="line"></div>
                    </div>
        </nav>
    
 
        <div class="payment">
           
    <form action="">
        <h1>Payment</h1>
                <div class="payment3">
                    <p>CARD NUMBER</p>
                    <input type="text" id="card" placeholder="Valid Card Number">
                </div>
    
                <div class="payment3 payment3-col" id="cv">
                    <p>EXPIRY&nbspDATE&nbsp</p>
                    <input type="date" class="dateleft" id="date" placeholder="MM/YY">
                
                    <p>CV&nbspCODE&nbsp</p>
                    <input type="text" id="date" placeholder="CVC">
                </div>
    
                <div class="payment3">
                    <p>COUPON CODE</p>
                    <input type="text" id="code" placeholder="">
                </div>
    
                <div class="payment-button">
                    <input type="button" id="btn" value="PAY">
                </div>
                <div class="payment3" id="additionaltext">
                    <p>Your personal data will be used to process your payment, and for other purpose reffered in our <a href="">privace policy</a></p>
                </div>
            </form>
        </div>

        </section>
          
 
    
    
    <!-- -----------------footer-------------- -->
    
    <div class="footer">
    
                <div class="footer-content">
                <h2>Get Help</h2>
                    <ul>
                    <a href="service.html"><li>Services</li></a>
                    <a href="about.html"><li>About Us</li></a>
                    <a href="contact.html"><li>Contact Us</li></a>
                    </ul>
                </div>
                <div class="footer-content">
                <h2>Social Media</h2>
                   <ul>
                   <a href="contact.html"><li>Instagram</li></a>
                   <a href="contact.html"><li>Facebook</li></a>
                   <a href="contact.html"><li>YouTube</li></a>
                   <a href="contact.html"><li>Twitter</li></a>
                   </ul>
                 </div>  
         
    
               <div class="footer-content">
            <h2>Payment Methods</h2>
                <p>
                     Your data security and privacy is our responsibility
                </p>
    
                <div id="paymenticons">
                       <img id="paymenttypes" src="image/phonepay.png" alt="image not available">
                       <img id="paymenttypes" src="image/gpay.png" alt="image not available">
                       <img id="paymenttypes" src="image/credit.png" alt="image not available">
                       <img id="paymenttypes" class="paytmspecial" src="image/paytm.png" alt="image not available">
                </div>
        </div>
    
    </div>
    
    
    <script src="javascript/indexresponsive.js"></script>
   
</body>
</html>
<%
}
%>