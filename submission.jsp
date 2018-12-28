<%@page import="java.sql.*" %>
<%
try{
    String useremail = request.getParameter("em");
    String pass = request.getParameter("p1");
    String phone = request.getParameter("phone1");
    Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","");
            PreparedStatement ps = con.prepareStatement("Insert into register values(?,?,?)");
            ps.setString(1, useremail);
            ps.setString(2, pass);
            ps.setString(3, phone);
            int result = ps.executeUpdate();
            if(result!=0)
            {
                response.sendRedirect("index.jsp");
            }
            con.close();
}
catch(Exception e)
{
    out.println(e.toString());
}

%>