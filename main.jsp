<html>
    <head>
        <link rel="styleheet" href="css/bootstrap.min.css"/>
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <link rel="stylesheet" href="style.css"/>
        <style>
            .content
            {
                height:auto;
                width:100%;
                background-color:cornflowerblue;
                color:black;
                font-family:serif;
                margin-top:10%;
            }
            * {box-sizing:border-box}

            /* Slideshow container */
             .slideshow-container {
               max-width: 100%;
               position: relative;
               margin: auto;
               height:500px;
               }

            /* Hide the images by default */
            .mySlides {
                display: none;
               }

          /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 4.5s;
            animation-name: fade;
            animation-duration: 4.5s;
            }

            @-webkit-keyframes fade {
              from {opacity: .4} 
              to {opacity: 1}
            }

            @keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
            }
            #caption1,#caption2,#caption3
            {
                 color: white;
                 font-size: 40px;
                 font-family:sans-serif;
                 padding: 8px 12px;
                 position: absolute;
                 bottom: 20%;
                 right:300px;
                 width: 100%;
                 text-align: center;
            }
        </style>
    </head>
    <body>
        <jsp:include page="userheader.jsp"/>
        <%
                               
              if(session.getAttribute("Email")==null){
      
         response.sendRedirect("index.jsp");
        }
        %>
        <div class="container-fluid">
            <div class="content">
                        <!-- Slideshow container -->
                        <div class="slideshow-container">

                       <!-- Full-width images with number and caption text -->
                          <div class="mySlides fade">
                           <div id="caption1">Get Online Insurance
                               For Your Car</div>
                            <img src="Images/car.jpg" style="width:100%;height:500px;">
                            
                             </div>

                      <div class="mySlides fade">
                        <div id="caption2">Faster claim settlement</div>
                        <img src="Images/steer.jpg" style="width:100%;height:500px;">
                    
                             </div>

                      <div class="mySlides fade">
                          <div id="caption3">We care for your</div>
                           <img src="Images/new.jpg" style="width:100%;height:500px;">
             
                            </div>

                
           
        </div>
                        <div class="row">
                            <div class="col-md-12" style="text-align: center;background-color:white;">
                                <h1>Best place for vehicle insurance</h1>
                            </div>
                        </div>
            </div>
        </div>
        <script>
         var slideIndex = 0;
        showSlides();

            function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            for (i = 0; i < slides.length; i++) {
               slides[i].style.display="none";
               }
           slideIndex++;
           if (slideIndex > slides.length) {slideIndex = 1} 
           slides[slideIndex-1].style.display = "block"; 
          setTimeout(showSlides, 5000); // Change image every 5 seconds
            }
        </script>
    </body>
</html>