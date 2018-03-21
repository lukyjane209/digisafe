<html>
<body>
<%@ page language="java" import="java.io.*" import="java.sql.*" %>
<%@ include file ="login_error.htm" %>

<%  Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@10.0.21.20:1521:orcl","amita","sattguru");
        Statement smt=con.createStatement();
        String user=request.getParameter("T1");
        String pass=request.getParameter("T2");
        int i=0;
%> 
 <%  
        ResultSet rs=smt.executeQuery("select * from login ");
        while(rs.next()){
        String nm= rs.getString(1);
        String ps = rs.getString(2);    
  %>
   <% 
         if((nm.equals(user))&&(ps.equals(pass)))
              {
                  response.sendRedirect("master.htm");
              }
                                   
      %>                                     
                                   
 </body>
</html>

	

	

