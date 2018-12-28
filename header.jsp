<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="java.sql.*" %>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href =" style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>    
        <script>
            function display()
            {   
                document.getElementById("butn").style = "display:block;";
            }
            function popup()
            {
                document.getElementById('login-menu').style.display="block";
                
            }
            function back(){
            document.getElementById('login-menu').style.display="none";
            }
        </script>
        <style>
            .butn > #active
            {
                background-color: cornflowerblue;
                color:white;
            }
            #login-menu
            {
                display: none;
                height: 100%;
                width: 100%;
                border-radius: 5px 5px 5px 5px;
                background-color: rgba(0,0,0,0.6);
                color:white;
                transition: width 2s, height 2s, transform 2s;
                z-index:999;
                position: fixed;
            }
            form > input{
                width:100%;
                height: 30px;  
                color:black;
            }
            form > a
            {
                color:#00ad01;
                text-decoration: none;
            }
            form>a:hover{
                color:tomato;
                text-decoration: none;
            }
            #log{
                color:white;
                background-color: cornflowerblue;
                border-style: none;
            }
            #log:hover
            {
                background-color: black;
            }
            
        </style>
    </head>
    <body class="body">
        <div class="container-fluid" >
            <div class=" navbar-default ">
                <div class="row">
                    <div class="col-md-1">
                        <img id="img1" src="Images/logo.png">
                    </div>
                    <div class="col-md-2">
                        <br>
                        <h1 id="head1">Car Beema</h1>
                    </div>
                    <div class="col-md-4"><br><br>
                        <div class="butn">
                            <a href="index.jsp" id="active">Home</a>
                            <a href="userBuy.jsp">Buy</a>
                            <a href="userRenew.jsp">Renew</a>
                            <a href="userClaim.jsp">Claim</a>
                            <a href="aboutUs.jsp">About Us</a>
                        </div>
                        
                            </div>
                    <div class="col-md-2"><br><br>
                       <input id="icon"  type="text" placeholder="Search" />
                       
                       <a href="#" style="text-decoration: none; float: right;">
                           <span class="glyphicon glyphicon-search" style="padding: 0px; font-size: 18px;"></span>
                       </a>
                        
                    </div>
                    <br><br>
                    <div class="col-md-1"  style="margin-left: 0px ;">
                      
                        <div id="btn-col" class="btn btn-primary" onclick="popup()" ondblclick="back()">Login</div>
                        
                    </div>
                    <div class="col-md-1">
                        <div class="btn btn-primary"><a href="register.jsp" style="text-decoration: none; color:white;">Sign Up</a></div>&nbsp;&nbsp;&nbsp;
                    </div>
                           </div>
                   
                        </div> 
                    </div>
       
                        <div id="login-menu">
                            <br>
                            <br><br><br><br><br><br><br>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6" style="background-color: rgba(100,100,80,0.8);">
                                    <br>
                               <span id="glicon" class="glyphicon glyphicon-remove-circle" style="font-size: 26px; float: right" onclick="back()"></span>
                            <form action="checkuser.jsp" method="post">
                                <h2 style="text-align: center;">Login</h2>
                                <input type="email" name="email" placeholder="example@mail.com" required><br><br>
                                <input type="password" name="pass" placeholder="password" required><br><br>
                                <input type="submit" id="logbutn" name="log" value="Login"><br>
                              
                                <a href="forgotpass.html">Forgot password?</a><br>
                                Do not have an account?<a href="register.jsp">Sign up</a><br>
                            
                            </form>
                               <br>
                            </div>
                                <div class="col-md-3"></div>    
                        </div>
                        </div>
    </body>
</html>
