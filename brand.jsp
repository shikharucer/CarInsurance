<%@page import="java.sql.*"%>
<%
try{
 Connection con;
 Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","");
 PreparedStatement ps = con.prepareStatement("select * from brand");
 ResultSet rs=ps.executeQuery();
 while(rs.next())
 {
     out.println(rs.getString(2)+"<br>");
 }
 con.close();
}
catch(Exception e)
{
    out.println(e);
}
%>