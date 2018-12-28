
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <link rel="stylesheet" href =" style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/> 
        <title>Car Beema</title>
        <style>
            #imgshow
            {
                background-image: url('Images/car.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                width:100%;
                height:460px;
               
                
            }
            .main-content
            {
                color:black;
                background-color: white;
                height: 900px;
                width: 100%;
                margin-top: 2%;
            }
        </style>
        <script>
            function phonevalid()
            {
                var phone = document.forms['getForm']['phone'].value;
                var regex1 = /^[0-9]{10}$/;
                if(phone=="")
                {
                   document.getElementById('phnError').innerHTML="Please enter phone number";
                   document.getElementById('phnError').className="glyphicon glyphicon-exclamation-sign";
                   document.getElementById('phnError').style.color="red";
                   return false;   
                }
                if(!regex1.test(phone))
                {
                   document.getElementById('phnError').innerHTML="Invalid Phone Number";
                   document.getElementById('phnError').className="glyphicon glyphicon-exclamation-sign";
                   document.getElementById('phnError').style.color="red";
                   return false;
                }
              
                document.getElementById('phnError').className="glyphicon glyphicon-ok";
                document.getElementById('phnError').innerHTML="";
                document.getElementById('phnError').style.color="green";
                return true;
            }
            function register()
            {
                var rg = document.forms['getForm']['regno'].value;
                regex2 = /^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$/;
                space=/^\s*/;
                if(rg=="")
                {
                   document.getElementById('regError').innerHTML="Please Enter Your Registration Number";
                   document.getElementById('regError').className="glyphicon glyphicon-exclamation-sign";
                   document.getElementById('regError').style.color="red";
                   return false;
                }
                if(!regex2.test(rg)&&(rg.length>10||rg.length<10))
                {
                   document.getElementById('regError').innerHTML="Invalid Registration Number";
                   document.getElementById('regError').className="glyphicon glyphicon-exclamation-sign";
                   document.getElementById('regError').style.color="red";
                   return false;
                }
               
                   document.getElementById('regError').className="glyphicon glyphicon-ok";
                   document.getElementById('regError').innerHTML="";
                   document.getElementById('regError').style.color="green";
                 
                return true;
            }
            
            function validate()
            {
                if(!phonevalid())
                {
                    return false;
                }
                if(!register())
                {
                    return false;
                }
                return true;
            }
            
            
            
        </script>
    </head>
    <body>
        <!-----------header-link------->
        <jsp:include page="header.jsp"/>
        
        <!---------main container---->
        <div class="container-fluid">
            <!------main row---->
            <!------------content---------->
            <div class="row">
                 <div class="col-md-8">
              <div class="middle" >
                  <div class="row" style="margin-top:0px;">
                      <div class="col-md-12">
                         <div id="imgshow">
                          <h1><br><br>
                              <br><br><br>
                              &nbsp;&nbsp;&nbsp;Get your insurance <br>
                              &nbsp;&nbsp;&nbsp;in no time.</h1>
                          </div>
                      </div>
                  </div>
                  
                </div>
                
           </div>
                <!-----------get quote section------->
                <div class="col-md-4">
            <div class="sidebar">
                <div class="row">
                    <div class="col-lg-12">
                        <br><h3 id="head2">Get Quick Quote</h3>
                    </div>
                </div>
                <div class="row" style="height: 400px">
                    <div class="container-fluid">
                        <form name="getForm" action="getquote.jsp" method="POST" onsubmit="return validate()">
                   
                    <br><br>
                        
                            <label>&nbsp;E-mail:</label><br>
                        
                      
                            &nbsp;<input class="input2" type="email" name="email" id="email" placeholder="name@example.com" required>
                        
                        
                    <br><br>
                     
                            <label>&nbsp;Registration number:</label><br>
                   
                            &nbsp;<input class="input2" type="text" name="regno" id="reg" maxlength="10" placeholder="Example: UP70GT2098" onkeyup="register()" required>
                           <span id="regError"></span>
                        
                        
                    <br><br>
                    
                            <label>&nbsp;Phone:</label><br>
                            &nbsp;<input class="input2" type="text" name="phone" id="phn" maxlength="10" placeholder="Phone"  onkeyup="phonevalid()" required>
                           <span id="phnError" ></span>
                       
                    <br><br>
                     
                            <input id="sub" type="submit" value="Get Quote">
                     
                         
                    <br><br>
                </form>
                    </div>
                </div>
            </div>   
        </div>        
        </div> 
        </div>
        <div class="container-fluid">
            <div class="main-content">
                <div class="row">
                    <div class="col-md-12" style="text-align:center;">
                        <h1>&nbsp;Why Car Beema?</h1>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="background-color: #ffffff;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4), 0 6px 20px 0 rgba(0, 0, 0, 0.4);
                         border-radius:20px 20px 20px 20px;">
                        <p style="font-family: sans-serif;font-size:20px;">
                            Your car is valuable and expenses to repair it are very high. Also according to the government of India insuring car is recommended.
                            Car Beema is on the place where you can get your car insurance online without any hassle. Here we provide buying of new policy and 
                            renewing your policy online. You can download the claim form so as to file the claim.  
                        </p>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="row"><br>
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="text-align: center;">
                        <h2>Understand The Car Insurance Process</h2>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="row"><br>
                    <div class="col-md-1"></div>
                    <div class="col-md-10" style="text-align: left;">
                        <p>
                        <h3> What is covered under your car insurance policy: Inclusions</h3>
                        <ul>
                   <li>Loss or damage to your vehicle against natural calamities -
                       Fire, explosion, self-ignition or lightning, earthquake, flood, typhoon, hurricane, storm, 
                       tempest, inundation, cyclone, hailstorm, frost, landslide, rockslide.
                   <li>Loss or damage to your vehicle against man-made calamities -
                       Burglary, theft, riot, strike, malicious act, accident by external means, 
                       terrorist activity, any damage in transit by road, rail, inland waterway, lift, elevator or air.
                   <li>Personal Accident Cover -
                       Coverage of ` 2 lakhs for the individual driver of the vehicle while travelling, 
                       mounting or dismounting from the car. Optional personal accident covers for co-passengers are also available.
                   <li>Third Party Legal Liability -
                        Protection against legal liability due to accidental damages resulting in the permanent injury 
                        or death of a person, and damage caused to the surrounding property.
                        </ul>
                  To understand exactly what all your car insurance policy covers, and be in a much better position to benefit from it, read your Policy Wordings carefully.
                    </p>
                  <h3>What is not covered under your car insurance policy: Exclusions</h3>
                  <p>
                  <ul>
                      <li>Normal wear and tear and general ageing of the vehicle.
                          <li>Depreciation or any consequential loss.
                          <li>Mechanical/ electrical breakdown.
                          <li> Loss/ damage due to war, mutiny or nuclear risk.
                  </ul>
                        </p>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </div>      
        </div>
        <div class="container-fluid"> 
            <jsp:include page="footer.jsp"/>
        </div>
        
    </body>
</html>
