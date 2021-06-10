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
        <%@ page import="java.sql.*" %>
    <%
  String fc=(String)session.getAttribute("flight_company");
   String fid=(String)session.getAttribute("flight_id");
  String se=(String)session.getAttribute("class");
  String dc=(String)session.getAttribute("departure_city");
  String ac=(String)session.getAttribute("arrival_city");
  String dt=(String)session.getAttribute("departure_time");
  String at=(String)session.getAttribute("arrival_time");
  int fr=Integer.parseInt((String)session.getAttribute("fare"));
  int nop=Integer.parseInt((String)session.getAttribute("nop"));
   int i=1001; 
   int c=i+1;
    
    session.setAttribute("orderid", c);



    String tname=request.getParameter("ticketname");
    session.setAttribute("name-on-ticket", tname);
         String tmnum=request.getParameter("ticketmobnumber");
         session.setAttribute("number-on-ticket", tmnum);
         int a=001;
         String oidd=(String)("O"+a);
         String dated=(String)session.getAttribute("dept-date");

         String frd=(String)session.getAttribute("fare");
         String nopd=(String)session.getAttribute("nop");

         try{
             Class.forName("com.mysql.jdbc.Driver");
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","ishant");
              PreparedStatement ps=conn.prepareStatement("insert into orders(passenger_name, from_city, to_city, flight_id, dept_time, arr_time, class, no_of_seats, order_id, date) values(?,?,?,?,?,?,?,?,?,?)");
              PreparedStatement ps2=conn.prepareStatement("select count(*) from orders");
              String o=null;
              String orderid="";
              ResultSet rs=null;
              rs=ps2.executeQuery();

                 while(rs.next()){
                 o = rs.getString(1);
                 orderid=("OR00"+o);
                 }

                 session.setAttribute("oid", orderid);


              ps.setString(1,tname);
              ps.setString(2,dc);
              ps.setString(3,ac);
              ps.setString(4,fid);
              ps.setString(5,dt);
              ps.setString(6,at);
              ps.setString(7,se);
              ps.setString(8,nopd);
              ps.setString(9,orderid);
              ps.setString(10,dated);

               int x=ps.executeUpdate();

     if(x>0)
     {
         
     }
     else{
         out.println("Registration failed.....");
     }

         }

         catch(Exception e){
              out.println(e);
         }
         
    %>

    <%
            int availseats=Integer.parseInt((String)session.getAttribute("available_seats"));
   
   int finalavail=availseats-nop;

    try{
       Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","ishant");
     PreparedStatement ps5=conn.prepareStatement("update flight_details set available_"+(String)session.getAttribute("class")+"="+finalavail+" where flight_id = '"+fid+"'");

     int x=ps5.executeUpdate();

     if(x>0)
     {
         out.println("");

     }
     else{
         out.println("updation failed.....");
     }

  }
    catch(Exception e){
        out.println(e);
    }
    
    %>
        
        <div id="pay-error"></div>
        <div class="payment">
            
    <form action="final-ticket.jsp" onsubmit="return pv()" method="post">
        <h1>Payment</h1>
                <div class="payment3">
                    <p>CARD NUMBER</p>
                    <input type="text" id="card" placeholder="- - - - / - - - - / - - - - / - - - -">
                </div>
    
                <div class="payment3 payment3-col" id="cv">
                    <p>EXPIRY&nbspDATE&nbsp</p>
                    <input type="date" class="dateleft" id="date" placeholder="MM/YY">
                
                    <p>CV&nbspCODE&nbsp</p>
                    <input type="text" id="cvc" placeholder="CVC">
                </div>
    
                <div class="payment3">
                    <p>NAME ON CARD</p>
                    <input type="text" id="code-name" placeholder="">
                </div>
    
                <div class="payment-button">
                    <a><input type="submit" id="btn" value="PAY"></a>
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