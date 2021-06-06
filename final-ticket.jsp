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
 <script src="javascript/payment.js"></script>
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

    
          <div class="bodyy"><h2>congratulations!!!</h2>
    <div class="final-ticket">
        <div class="flight-com"><h1><%= (String)session.getAttribute("flight_company")%></h1></div>
        <div class="sub-final-ticket">
            <div class="ticket-section-one">

                <div class="ticket-sub-section">
                    <span class="left">Name:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("name-on-ticket")%>">    </span>
                    <span class="middle">Order ID:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("oid")%>">    </span>
                    </div>


                <div class="ticket-sub-section">
            <span class="left">From:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("departure_city")%>">   </span> 
            <span class="middle">To:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("arrival_city")%>">    </span>
            </div>

            <div class="ticket-sub-section">
                <span class="left">Flight ID:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("flight_id")%>">    </span>
                <span class="middle">Date:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("dept-date")%>">    </span>
                </div>

                <div class="ticket-sub-section">
                    <span class="left">Departure Time:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("departure_time")%>">    </span>
                    <span class="middle">Arrival Time:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("arrival_time")%>">    </span>
                    </div>

                    <div class="ticket-sub-section">
                        <span class="left">Class:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("class")%>">    </span>
                        <span class="middle">No. of seats:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("nop")%>">    </span>
                        </div>

            </div>
            <div class="ticket-section-two">
                <span class="middle ticket-sub-section">Name:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("name-on-ticket")%>">    </span>
                <span class="middle ticket-sub-section">From:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("departure_city")%>">    </span>
                <span class="middle ticket-sub-section">To:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("arrival_city")%>">  </span>
                <span class="middle ticket-sub-section">Date:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("dept-date")%>">  </span>
                <span class="middle ticket-sub-section">Departure Time:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("departure_time")%>">    </span>
                <span class="middle ticket-sub-section">Arrival Time:<input type="text" class="final-ticket-fields" placeholder="<%= (String)session.getAttribute("arrival_time")%>"></span>
            </div>
        </div>
    </div>
    <a href="logout.jsp"><input class="ticket-logout" type="button" value="logout"></a>
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