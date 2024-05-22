<%-- 
    Document   : index
    Created on : Mar 1, 2024, 12:41:10 PM
    Author     : FIKKI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>





    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel ="stylesheet" href ="css/bootstrap.css"/>
        <link rel="icon" type="image/x-icon" href="Images/favicon.ico">

        <script src="js/bootstrap.min.js"></script>
    </head>


    <body>

        <c:import url="NavBar.jsp"></c:import> 



        

        <!-- Carousel -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/a.jpg" alt="Chicago" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>Los Angeles</h3>
                        <p>We had such a great time in LA!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/ca.jpg" alt="Los Angeles" class="d-block" style="width:100%">      <div class="carousel-caption">
                        <h3>Chicago</h3>
                        <p>Thank you, Chicago!</p>
                    </div> 
                </div>
                <div class="carousel-item">
                    <img src="Images/ddd.jpg" alt="New York" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h3>New York</h3>
                        <p>We love the Big Apple!</p>
                    </div>  
                </div>
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>

        <div class="container-fluid mt-3">
            <h3>Carousel Example</h3>
            <p>The following example shows how to create a basic carousel with indicators and controls.</p>
        </div>



    </body>


</html>