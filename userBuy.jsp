
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
       <meta http-equiv="Pragma" content="no-cache" />
       <meta http-equiv="Expires" content="0" />
        <link rel="stylesheet" href =" style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>    
        <script>
            function display()
            {   
                document.getElementById("butn").style = "display:block;";
            }
            function validate()
            {
               
               
                var state = document.forms["ownerForm"]["st"].value;
                var city = document.forms["ownerForm"]["ct"].value;
             
                var zip = document.forms["ownerForm"]["zipcode"].value;
                
                if(!Fname())
                {
                    return false;
                }
                 
                if(!Lname())
                {
                    return false;
                }
                 
                if(!Address())
                {
                    return false;
                }
                 
                if(!Phone())
                {
                    return false;
                }
                 
                if(!Zip())
                {
                    return false;
                }
                
               return true; 
            }
    //validation of First Name        
            function Fname()
            {
                var Fname = document.forms["ownerForm"]["fn"].value;
                regex = /^[a-zA-Z]*$/;
                if(Fname=="")
                {
                    document.getElementById('fnameError').innerHTML="Please provide your name";
                    document.getElementById('fnameError').style.color="red";
                    document.forms["ownerForm"]["fn"].focus();
                    document.getElementById("submt").disabled=true;
                    return false;
                }
                if(!regex.test(Fname))
                {
                    document.getElementById('fnameError').innerHTML="Invalid";
                    document.getElementById('fnameError').style.color="red";
                    document.forms["ownerForm"]["fn"].focus();
                    document.getElementById("submt").disabled=true;
                    return false; 
                }
                document.getElementById('fnameError').innerHTML="OK";
                document.getElementById("submt").disabled=false;
                document.getElementById('fnameError').style.color="green";
                return true;
            }
            
    //Validation of Last Name         
            function Lname()
            {
                var Lname = document.forms["ownerForm"]["ln"].value;
                regex = /^[a-zA-Z]*$/;
                if(Lname=="")
                {
                    document.getElementById('lnameError').innerHTML="Please provide your name";
                    document.getElementById('lnameError').style.color="red";
                    document.forms["ownerForm"]["ln"].focus();
                    document.getElementById("submt").disabled=true;
                    return false;
                }
                if(!regex.test(Lname))
                {
                    document.getElementById('lnameError').innerHTML="Invalid";
                    document.getElementById('lnameError').style.color="red";
                    document.forms["ownerForm"]["ln"].focus();
                    document.getElementById("submt").disabled=true;
                    return false; 
                }
                document.getElementById('lnameError').innerHTML="OK";
                document.getElementById("submt").disabled=false;
                document.getElementById('lnameError').style.color="green";
                return true;
            }
            
             //function to validate address
          function Address()
          {
              var Address= document.forms["ownerForm"]["addr"].value;
              if(Address=="")
              {   
                  document.getElementById('addError').innerHTML="Please enter your address";
                  document.getElementById('addError').style.color="red";
                  document.forms["ownerForm"]["addr"].focus();
                  document.getElementById("submt").disabled=true;
                  return false; 
              }
              document.getElementById('addError').innerHTML="OK";
              document.getElementById("submt").disabled=false;
              document.getElementById('addError').style.color="green";
              return true;
          }   
             
        //funstion to validate Phone
           function Phone()
           {
               var phone = document.forms["ownerForm"]["phno"].value;
               var dig = /^[0-9]*$/;
               if(phone =="")
               {
                  document.getElementById('phnError').innerHTML="Please enter your number!";
                  document.getElementById('phnError').style.color="red";
                  document.forms["ownerForm"]["phno"].focus();
                  document.getElementById("submt").disabled=true;
                  return false;  
               }
               if(phone.length>10 || phone.length<10)
               {
                  document.getElementById('phnError').innerHTML="Phone number must of 10 digits!";
                  document.getElementById('phnError').style.color="red";
                  document.forms["ownerForm"]["phno"].focus();
                  document.getElementById("submt").disabled=true;
                  return false;    
               }
               if(!dig.test(phone))
               {
                  document.getElementById('phnError').innerHTML="Invalid Number!";
                  document.getElementById('phnError').style.color="red";
                  document.forms["ownerForm"]["phno"].focus();
                  document.getElementById("submt").disabled=true;
                  return false; 
               }
              
              document.getElementById('phnError').innerHTML="OK";
              document.getElementById("submt").disabled=false;
              document.getElementById('phnError').style.color="green";
              return true;
            }
           function Zip()
           {
               var zip = document.forms["ownerForm"]["zipcode"].value;
               var dig = /^[0-9]*$/;
               if(zip =="")
               {
                  document.getElementById('zipError').innerHTML="Please enter zip code!";
                  document.getElementById('zipError').style.color="red";
                  document.forms["ownerForm"]["zipcode"].focus();
                  document.getElementById("submt").disabled=true;
                  return false;  
               }
               if(zip.length>6 || zip.length<6)
               {
                  document.getElementById('zipError').innerHTML="Zip Code must be 6 digit!";
                  document.getElementById('zipError').style.color="red";
                  document.forms["ownerForm"]["zipcode"].focus();
                  document.getElementById("submt").disabled=true;
                  return false;    
               }
               if(!dig.test(zip))
               {
                  document.getElementById('zipError').innerHTML="Invalid Zip Code!";
                  document.getElementById('zipError').style.color="red";
                  document.forms["ownerForm"]["zipcode"].focus();
                  document.getElementById("submt").disabled=true;
                  return false; 
               }
              
              document.getElementById('zipError').innerHTML="OK";
              document.getElementById("submt").disabled=false;
              document.getElementById('zipError').style.color="green";
              return true;
            }
            
        
            
        </script>
        <style>
            .butn > #buy
            {
             background-color: cornflowerblue;
             color: white;
            }
            .content
            {
                height: 900px;
                width:100%;
                background-image: url('Images/car.jpg');
                background-size:100%;
                background-repeat: no-repeat;
                margin-top: 100px;
            }
            #menu{
                display: none;
                height: 120px;
                width:180px;
                color:white;
                background-color: black;
                z-index:9999;
            }
            #menu ul{
                list-style: none;
            }
            #menu a{
                text-decoration: none;
                font-size: 20px;
                padding: 1%;
                color:white;
            }
            #menu a:hover
            {
               
                text-decoration:none;
                color:greenyellow;
                padding:1%;
            }
            #step1
            {
                color:white;
                background-color: #00ba9d;
                text-align: center;
            }
            #submt{
                background-color:cornflowerblue;
                color:white;
                text-decoration: none;
                border-style: none;
                height: 30px;
                width: 100%;
            }
             #submt:hover
             {
                 color:white;
                 background-color: #00ad01;
             }
             #reset
             {
                background-color:#f10000;
                color:white;
                text-decoration: none;
                border-style: none;
                height: 30px;
                width: 100%;
                 
             }
             #reset:hover
             {
                 color:white;
                 background-color: #000000;
             }
             table > td > input,select
             {
                color: black;
             }
             table input
             {
                color: black;
             }
             table textarea
             {
                 color:black;
             }
             select>option
             {
                 color:black;
             }
             table 
             {
                 color:cornflowerblue;
             }
            
            
        </style>
        <script>
            function show()
            {
                document.getElementById('menu').style.display="block";
            }
            function back()
            {
                document.getElementById('menu').style.display="none";
            }
        </script>
       <script>
         function checkcity(){
         var state = document.getElementById("state").value;
         var req = new XMLHttpRequest();
           req.onreadystatechange=function()
            {
          if((req.readyState==4)&&(req.status==200))
              {
               document.getElementById("city").innerHTML=req.responseText;
               }
             };
              req.open("GET","searchcity.jsp?state="+state,true);
              req.send();
        return true;      
    }
       </script>
            
    </head>
    <body class="body">
        <jsp:include page="userheader.jsp"/>
                              <%
                               
                                if(session.getAttribute("Email")==null){
                               response.sendRedirect("index.jsp");
                                }
                               %>
        <!-----main content---------->
        <div class="container-fluid">
            <div class="content">
                <div class="row">
                    <div class="col-lg-12"></div>
                </div>
                <div class="row">
                    <div class="col-lg-12"></div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div id="step1">
                            <h2>Step 1 : Owner Registration </h2>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12"></div>
                    <br>
                    <br><br><br>  
                </div>
                <!---owner form-------->
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4" style="background-color: rgba(20,34,52,0.8); position: relative">
                <form name="ownerForm" action="owner.jsp"  method="post">
                    <table>
                        <tr>
                        <br>
                        <td>First Name: <input type="text" id="fname" name="fn" placeholder="First Name" style="width:330px;" onkeyup="Fname()" required>
                                <span id="fnameError"></span>
                            </td>
                        </tr>
                        <tr>
                        <td><br>Last Name:
                            <input type="text" id="lname" name="ln" placeholder="Last Name" style="width:330px;" onkeyup="Lname()" required>
                            <span id="lnameError"></span>
                        </td>
                          
                        </tr>
                        <tr>
                            <td>
                                <br>
                                 Address:&nbsp;&nbsp;&nbsp;&nbsp;
                                 <textarea name="addr" id="add" onkeyup="Address()"
                                style="width: 330px; height: 60px; vertical-align: middle; resize: none; border-radius: 5px 5px 5px
                                          5px" required></textarea>
                                 <span id="addError"></span>
                            </td>
                        </tr>
                        <tr>
                        <td>
                            <br>State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <select id="state" name="st" style="width:330px;" onchange="return checkcity()" required>
                            <option value="">Select</option>
                            <option value="Assam">Assam</option>
                            <option value="Bihar">Bihar</option>
                            <option value="Delhi">Delhi</option>
                            <option value="MP">M.P.</option>
                            <option value="Maharashtra">Maharastra</option>
                            <option value="UP">U.P.</option>
                            <option value="Uttrakhand">Uttrakhand</option>
                            <option value="Tamil Nadu">Tamil Nadu</option>
                            </select>
                        </td>
                        </tr>
                         <tr>
                        <td>
                            <br>City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <select id="city" name="ct" style="width:330px;" required>
                                <option value="">Select</option>
                            </select></td>
                        </tr>
                        <tr>
                            <td><br>Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="text" id="phno" name="pn" placeholder="Phone" style="width:330px;" onkeyup="Phone()" required>
                                <span id="phnError"></span>
                            </td>
                        </tr>
                        <tr>
                            <td><br>Zip Code:&nbsp;&nbsp;&nbsp;
                                <input type="text" id="zip" name="zipcode" placeholder="Zip Code" style="width:330px;" onkeyup="Zip()" required>
                            <span id="zipError"></span>
                            </td>
                        </tr>
                          <tr>
                            <td><br>
                                D.O.B:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="date" id="date" name="dt"  style="width:330px;" required></td>
                        </tr>
                        
                        <tr>
                            <td><br>
                                
                                <input type="submit" id='submt' value="Register" style="width:420px;">
                                
                            </td>
                            
                        </tr>
                         <tr>
                            <td><br> 
                                <input type="reset" id='reset' value="Reset" style="width:420px;">
                                
                            </td>
                            
                        </tr>
                    </table>
                    
                </form>
                    </div>
                     <div class="col-md-4"></div>
                    
                </div>
                
            </div>
        </div>
        <div class="container-fluid">
            <jsp:include page="footer.jsp"/>
        </div>
       
        
    </body>
</html>

