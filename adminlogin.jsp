<html>
    <head>
        <title>
            LoginAdmin
        </title>
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <style>
            *
            {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
        #content
        {
            height: 1000px;
            width: 100%;
            background-color:rgba(123,122,123,0.2);
        }
        .col-3
         {   position:fixed;
             width:40%;
             float: left;
             height: auto;
             margin-left: 35%;
             margin-top:10%;   
             background-color:rgba(123,122,123,0.8);

         }
         #submt:hover
         {
             background-color:green;
         }
         ::-webkit-input-placeholder
         {
             color:white;
         }
         input{
             width: 175%;
             height: 30px;
             margin-left: 15%;
             border-right: none;
             border-left: none;
             border-top: none;
             background-color: rgba(123,122,123,0.0);
             color:white;
             font-size: 20px;
         }
         .row
        {
            height:auto;
        }
        </style>
    </head>
    <body background="Images/img.jpg">
        <div id="content">
          <div class="row">
              <div class="col-3">
               <form name="adminform" method="post" >
                
                   <table>
                       <tr>
                           <td><br>
                             <input type="email" name="aemail" placeholder="Email" required>
                           </td>
                       </tr>
                       <tr>
                        <td><br><br>
                          <input type="password" name="apass" placeholder="Password" required>
                          <span id="incorrect">
                              <br>
                          </span>
                        </td>
                    </tr>
                    <tr>
                            <td><br><br>
                              <input id="submt" type="submit" value="Login" name="btn" style="border:none; background-color:green;cursor:hand;">
                            </td>
                        </tr>
                </table>   

                <%@page import="java.sql.*"%> 
      <%
    if(request.getParameter("btn")!=null){
     try
       {
           String email=request.getParameter("aemail");
           String pass=request.getParameter("apass");
           Connection con;
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","");
           PreparedStatement ps = con.prepareStatement("select * from adminlogin where Email=? and Password =?");
          ps.setString(1,email);
          ps.setString(2,pass);
          ResultSet rs = ps.executeQuery();
          if(rs.next())
         {
            session.setAttribute("Email",email);
            response.sendRedirect("Admin.jsp");
         }
        else
        { 
          %>
          <script>
          alert('Incorrect email or password');
          </script>
        <%
        }
        con.close();
         }
           catch(Exception e)
        {
       out.println(e.toString());
       }
       }
     %>  
               </form>
              </div>
          </div>
        </div>
       
    </body>
</html>