
<html>
<head>
<link rel="stylesheet" href="css/style.css"></head>
<body style="background-color:black; color:red; font-size:55px; flex-direction:column; margin-top: 60px; margin-left: 100px;" z>


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

     Statement st=conn.createStatement();
     ResultSet rs2=st.executeQuery("select mail from passenger where mail='"+mail+"'");
     int c=0;
     while(rs2.next())
     {
         c++;
     }
     if(c>0)
     {
         out.println("email already exist");
     }

else{
     int x=ps.executeUpdate();

     if(x>0)
     {
         out.println("Registration done successfully......");

     }
     else{
         out.println("Registration failed.....");
     }
}

   }catch(Exception e){
       out.println(e);
   }
   
%>
</div>


<a href="login.html"><input style="height: 50px; width: 100px;border: 2px solid black; background-color: orange; border-radius: 10px; font-size: 19px; margin-left: 480px" type="submit" value="LogIn"><a>
<a href="Register.html"><input style="height: 50px; width: 100px;border: 2px solid black; background-color: green; font-size: 19px; border-radius: 10px;" type="submit" value="Register"><a>
</body>
</html>