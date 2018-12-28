

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <title>JSP Page</title>
        <style>
            .foobar
            {
                width:100%;
                height:200px;
                background-color: rgba(123,123,123,0.8);
                margin-top:10px;
                margin-bottom: 2%;
            }
            .col-1
            {
                width:100%;
                float: left;
                text-align: center;
                font-size: 16px;
                color:white;
                
            }
            #links a
            {
                color:white;
                text-decoration: none;
                padding: 2%;
            }
            #links a:hover
            {
                color: #00ba9d;
                text-decoration: none;
                transition: linear;
            }
            img{
                padding: 10px;
            }
            brand a {
                background-color:white;
                text-decoration: none;
            }
            
        </style>
    </head>
    <body>
        <div class="foobar">
            <div class="col-1">
                <div id="links">
                <br>|
                <a href="Terms.jsp">Terms & Condition</a>|
                <a href="About.jsp">About Us</a>|
                <a href="faq.jsp">FAQ</a>|
                <a href="contact.jsp">Contact</a>|
            </div>
            </div>
            <div class="col-1" id="brand">
                <br><br>
                <a href="https://www.facebook.com/carbeema">
                    <img src="Images/facebook-square.svg" height="40px" width="40px" style="color: white;"></a>|
                <a href="https://plus.google.com/carbeema">
                    <img src="Images/google-plus.svg" height="40px" width="40px" style="color: white;"></a>|
                <a href="https://www.twitter.co.in/">    
                    <img src="Images/twitter.svg" height="40px" width="40px" style="color: white;"></a>|
                <a href="https://www.youtube.com/cannel">    
                    <img src="Images/youtube.svg" height="40px" width="40px" style="color: white;"></a>
            </div>
            <div class="col-1">
                <h5>Car Beema. All Rights Reserved.</h5>
            </div>
        </div>
    </body>
</html>
