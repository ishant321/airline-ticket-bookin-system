<%@ page import="java.sql.*" %>
<% 
     String name=request.getParameter("name");
     String mail=request.getParameter("mail");
     String number=request.getParameter("number");
     String username=request.getParameter("username");
     String password=request.getParameter("password");
     String confirmpassword=request.getParameter("confirmpassword");
     String gender=request.getParameter("gender");


   try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","ishant");
     PreparedStatement ps=conn.prepareStatement("insert into passenger(name, mail, number, username, password, confirmpassword, gender) values(?,?,?,?,?,?,?)");
     ps.setString(1,name);
     ps.setString(2,mail);
     ps.setString(3,number);
     ps.setString(4,username);
     ps.setString(5,password);
     ps.setString(6,confirmpassword);
     ps.setString(7,gender);

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