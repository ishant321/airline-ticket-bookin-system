<%@ page import="java.sql.*" %>
<%

String mail=request.getParameter("loginmail");
String password=request.getParameter("loginpass");

try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root","ishant");
     
     Statement st=con.createStatement();
     ResultSet rs= st.executeQuery("select * from passenger where mail="+mail+"");
     
     if(rs.next())
     {
       if(rs.getString(2).equals(password))
       {
           out.println("successful.....");
       }
       else{
           out.println("invalid credential....");
       }
     }
}

catch(Exception e){
    out.println(e);

}

%>
