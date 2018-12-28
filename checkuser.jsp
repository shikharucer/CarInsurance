<%-- 
    Document   : checkuser
    Created on : Nov 26, 2018, 7:59:08 PM
    Author     : Shikhar Shukla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
  <%
                                try{
                                        if(request.getParameter("log")!=null){
                                        String email = request.getParameter("email");
                                        String password = request.getParameter("pass");
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","");
                                        PreparedStatement ps = con.prepareStatement("select * from register where email = ?");
                                        ps.setString(1, email);
                                        ResultSet rs = ps.executeQuery();
                                        if(rs.next())
                                        {
                                          session.setAttribute("Email",email );
                                          Statement ps2 = con.createStatement();
                                          String sql = "insert into login values('"+email+"','"+password+"',CURDATE(),CURTIME())";
                                          int res = ps.executeUpdate(sql);
                                          if(res!=0)
                                          {
                                          response.sendRedirect("main.jsp");
                                          }
                                          else
                                          {
                                              out.print("Some error occured");
                                          }
                                        }
                                         else
                                        {  
                                          %>
                                          <script>
                                              alert('Incorrect email or password');
                                              window.location="http://localhost:8084/CarInsurance/index.jsp";
                                           </script>
                                          <%
                                             // response.sendRedirect("index.jsp");
                                          }
                                      }
                                   }
                                catch(Exception e)
                                {
                                    out.println(e.toString());
                                }
                                %>