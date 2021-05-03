
<html>
<head>
<link rel="stylesheet" href="css/style.css"></head>
<body>


<div class="registerjsp">
<%@ page import="java.sql.*" %>
<% 
     String name=request.getParameter("name");
     String mail=request.getParameter("mail");
     String number=request.getParameter("number");
     String password=request.getParameter("password");
     String confirmpassword=request.getParameter("confirmpassword");
     String gender=request.getParameter("gender");


   try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","ishant");
     PreparedStatement ps=conn.prepareStatement("insert into passenger(name, mail, number, password, confirmpassword, gender) values(?,?,?,?,?,?)");
     ps.setString(1,name);
     ps.setString(2,mail);
     ps.setString(3,number);
     ps.setString(4,password);
     ps.setString(5,confirmpassword);
     ps.setString(6,gender);

     int x=ps.executeUpdate();

     if(x>0)
     {
         out.println("Registration done successfully......");

     }
     else{
         out.println("Registration failed.....");
     }


   }catch(Exception e){
       out.println(e);
   }

%>
</div>

<div id="parent">
        <section class="body"></section>
        <div class="overlay"></div>
    </div>
    <nav id="navbar">

        <ul>
            <li class="item"><a href="welcome.html">Home</a></li>
            <li class="item"><a href="service.html">Services</a></li>
            <li class="item"><a href="about.html">About&nbspus</a></li>
            <li class="item"><a href="contact.html">Contact&nbspus</a></li>
        </ul>
    </nav>
    </div>
<a href="login.html"><input type="submit" class="success" value="LogIn"><a>
</body>
</html>