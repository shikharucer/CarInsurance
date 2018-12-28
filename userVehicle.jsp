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
        </script>
        <style>
            .butn > #buy
            {
                background-color: cornflowerblue;
                color:white;
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
             #step2
            {
                color:white;
                background-color: #00ba9d;
                text-align: center;
            }
             
             table td>input{
                 color:black;
             }
             table td>select>option
             {
                 color:black;
             }
             .text{
                 color:white;
             }
             
        </style>
    </head>
    <body class="body">
        
            <jsp:include page="userheader.jsp"/>
       
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
                        <div id="step2">
                            <h2>Step 2 : Vehicle Registration </h2>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-12"></div>
                    <br>
                    <br><br><br>  
                
                <!---vehicle form-------->
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4" style="background-color: rgba(20,34,52,0.8); position: relative">
                <form name="vehicle" action="vehicle.jsp"  method="post">
                    <table>
                        <tr>
                            <td class="text"><br>Vehicle Registration Number:<br><br></td>
                            <td><input type="text" id="vregno" name="vregno" ></td>
                        </tr>
                        <tr>
                            <td class="text"><br>Model Name:<br><br></td>
                            <td><input type="text" id="modno" name="modno"></td>
                        </tr>
                        <tr>
                            <td class="text"><br>Brand:<br><br></td>
                            <td><select id="bname" name="brandname">
                                    <option>Select</option>
                                    <option value="audi">Audi </option>
                                    <option value="bmw">BMW </option>
                                    <option value="chevrolet"> Chevrolet</option>
                                    <option value="datsun">Datsun </option>
                                    <option value="fiat">Fiat </option>
                                    <option value="ford">Ford </option>
                                    <option value="hyundai">Hyundai</option>
                                    <option value="land rover">Land Rover</option>
                                    <option value="maruti">Maruti Suzuki</option>
                                    <option value="nissan">Nissan </option>
                                    <option value="renault">Renault </option>
                                    <option value="skoda">Skoda </option>
                                    <option value="tata">Tata </option>
                                    <option value="tesla">Tesla </option>
                                    <option value="volkswagen">Volkswagen</option>
                                </select>
                                </td>
                        </tr>
                        <tr>
                            <td class="text"><br>Registered State:<br><br></td>
                            <td><select name="regstate">
                                    <option value="">Select</option>
                                     <option value="Assam">Assam</option>
                                      <option value="Bihar">Bihar</option>
                                     <option value="Delhi">Delhi</option>
                                     <option value="mp">M.P.</option>
                                     <option value="maharastra">Maharastra</option>
                                      <option value="Up">U.P.</option>
                                     <option value="utk">Uttrakhand</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td class="text"><br>Chesis no:<br><br></td>
                            <td><input type="text" id="cheno" name="cheno"></td>
                        </tr>
                        <tr>
                            <td class="text"><br>Engine no:<br><br></td>
                            <td><input type="text" id="engineno" name="engineno"></td>
                        </tr>
                        <tr>
                           
                            <td colspan="2"><input type="submit" id="forward" name="frw" value="Submit" style="width:100%;background-color:green;
                                  border:none;height:30px;color:white;"></td>
                        </tr>
                        <tr>
                           
                            <td colspan="2"><br><input type="reset" id="reset" name="res" value="Reset" style="width:100%;background-color: red;
                                  border:none;height:30px;color:white;"></td>
                        </tr>
                    </table>
                </form>
                    </div>  
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <jsp:include page="footer.jsp"/>
        </div>
       
    </body>
</html>