<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>first page</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cedarville+Cursive&family=KoHo:wght@200&display=swap" rel="stylesheet">
    <script src="javascript/index.js"></script>

</head>
<body >
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
    <div style="height: 600px; display: flex; align-items:center; justify-content: center; width: 90%; margin: auto; flex-direction: column">
<%@ page import="java.sql.*" %>
<% 
    String dc=request.getParameter("Departure_City");
    String ac=request.getParameter("Arrival_City");
    String seating=request.getParameter("preffered_seating");
         session.setAttribute("class", seating);
    String nop=request.getParameter("num_of_passenger");
    String date=request.getParameter("ddate");
    session.setAttribute("dept-date", date);
    session.setAttribute("nop", nop);
    try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","ishant");
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select flight_company, "+seating+", departure_city, arrival_city, departure_time, arrival_time, available_seats,fare, flight_id from flight_details where departure_city='"+dc+"' and arrival_city='"+ac+"'");
     while(rs.next())
{ 

%>
<table border="1" style="width:100%; align:center; border: 1px solid black; white-space: nowrap; background-color: grey; font-size: 120%;">
<tbody>
<tr style="width: 100%" >
<th >flight company</th>
<th><% out.print(" "+seating);%></th>
<th>Departure_City</th>
<th>Arrival_City</th>
<th>Departure_time</th>
<th>Arrival_time</th>
<th>Avlailable seats</th>
<th>Fare</th>
<th>flight id</th>
</tr>


<tr>
<td><% session.setAttribute("flight_company" ,rs.getString(1)); out.print(""+rs.getString(1));%></td> 
<td><% session.setAttribute("seats" ,rs.getString(2)); out.print(""+rs.getString(2));%></td> 
<td><% session.setAttribute("departure_city" ,rs.getString(3)); out.print(""+rs.getString(3));%></td> 
<td><% session.setAttribute("arrival_city" ,rs.getString(4)); out.print(""+rs.getString(4));%></td> 
<td><% session.setAttribute("departure_time" ,rs.getString(5)); out.print(""+rs.getString(5));%></td> 
<td><% session.setAttribute("arrival_time" ,rs.getString(6)); out.print(""+rs.getString(6));%></td> 
<td><% session.setAttribute("available_seats" ,rs.getString(7)); out.print(""+rs.getString(7));%></td> 
<td><% session.setAttribute("fare" ,rs.getString(8)); out.print(""+rs.getString(8));%></td> 
<td><% session.setAttribute("flight_id" ,rs.getString(9)); out.print(""+rs.getString(9));%></td> 

<td><%
if(session.getAttribute("email")==null)
{
%>
<a href="login.html"><button style="width: 100%; background-color: lightgreen;  font-size: 120%;">Book</button></a>
<%}
else{
    %>
    <a href="order.jsp"><button style="width: 100%; background-color: lightgreen;  font-size: 120%;">Book</button></a>
<% 
}
%>
</td>
</tr>
</tbody>
</table>
<%
    
}
    }



catch(Exception e){
    out.print(e);
}

%>
<% if(session.getAttribute("email")==null){
%>
<p style="color: white; margin-top: 10px; text-align: center;">You need to register or login first to book a ticket</p>
<div style=" display: flex; align-items: center; justify-content: center; " class="login-register">
        <a href="login.html"><h2><input type="button" class="indexlogin" value="Log In"></h2></a>
       <a href="register.html"><h2><input type="button" onclick="return order()" class="indexregister" value="Register"></h2></a>
    </div>
    <%
}

else{
    String s=(String)session.getAttribute("email");
    %><div style="color: grey;">
    <%
    out.print("Welcome "+s);
     %>
     <a href="logout.jsp" style="text-decoration: none;"><h2><input style="width: 110px;
    margin: auto;
    display: flex;
    justify-content: center;
    border: none;
    border-radius: 10px;
    font-size: 25px;" type="button" value="logout"></h2></a>
    <%
}
    %>
    </div>

</div>

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







 