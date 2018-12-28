<%@page import="java.sql.*"%>
<% try{
    
    String email;
    email=(String)session.getAttribute("Email");
    String Fname,Lname,Address,City,State,Zip,Phone;
    String DOB;
    Fname = request.getParameter("fn");
    
    Lname = request.getParameter("ln");
    
    Address = request.getParameter("addr");
    
    City = request.getParameter("ct"); 
    
    State = request.getParameter("st");
      
    DOB = request.getParameter("dt"); 
    
    Phone = request.getParameter("pn");
    
    Zip = request.getParameter("zipcode");
    
    
    
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","");
        Statement st = con.createStatement();
        String sql = "insert into owner (email,first,last,address,state,city,phone,zip,dob) values('"+email+"','"+Fname+"','"+Lname+"','"+Address+"','"+State+"','"+City+"' ,'"+Phone+"','"+Zip+"','"+DOB+"')";
        int res = st.executeUpdate(sql);
        if(res!=0)
        {
            response.sendRedirect("userVehicle.jsp");
        }
        else
        {
            out.print("<br> Error!");
        }
        con.close();
        
    }
    catch (Exception e)
    {
       System.out.println(e.toString());
    }
    
%>