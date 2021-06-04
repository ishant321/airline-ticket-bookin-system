<%
  String fc=(String)session.getAttribute("flight_company");
  out.print(""+fc);
  String fn=(String)session.getAttribute("flight_number");
  out.print(""+fn);
  String se=(String)session.getAttribute("seats");
  out.print(""+se);
  String dc=(String)session.getAttribute("departure_city");
  out.print(""+dc);
  String ac=(String)session.getAttribute("arrival_city");
  out.print(""+ac);
  String dt=(String)session.getAttribute("departure_time");
  out.print(""+dt);
%>