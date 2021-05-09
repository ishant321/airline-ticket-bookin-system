<html>
<head><title></title></head>
<body style="background-color:black; color:red; font-size:55px; display: flex; align-items:center; justify-content:center;flex-direction:column; margin-top: 250px">
<%@ page import="java.sql.*" %>
<%

String mail=request.getParameter("loginmail");
String password=request.getParameter("loginpass");
String dbemail, dbpassword; 

try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","ishant");
     
    PreparedStatement ps=null;
    ps=con.prepareStatement("select mail,password from passenger where mail=? and password=?");
    ps.setString(1, mail);
    ps.setString(2, password);
    
    ResultSet rs=null;
    rs=ps.executeQuery();

       if(rs.next())
    {

                 dbemail=rs.getString("mail");
                 dbpassword=rs.getString("password");

         if(mail.equals(dbemail) && password.equals(dbpassword)) 
{
              session.setAttribute("login", dbemail);
              response.sendRedirect("ticket.html");
} 

}

else
{
 out.println("invalid email or password");
 rs.close();
 ps.close();
}  


     

    
}
catch(Exception e){
    out.print(e);
}

%>

<a href="login.html"><input style="height: 80px; width: 80px;border: 2px solid black; border-radius: 50px; background-color: green; font-size: 19px;" type="submit" value="LogIn"></a>
<P style="color: white; font-size: 15px">Tap on login button to login again</p>
<P style="color: white; font-size: 15px">New User?<a href="register.html">SignUp</a></p>

</bod>
</html>