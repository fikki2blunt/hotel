<%-- 
    Document   : Book
    Created on : Apr 5, 2024, 1:49:22 PM
    Author     : FIKKI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="hotel.RoomDAO" %>
<%@page import="hotel.RoomBean" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>


<html>
    <%
    RoomDAO rd = new RoomDAO();
    List<RoomBean> rooms = rd.room();
    %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel ="stylesheet" href ="css/bootstrap.min.css"/>

        <title>JSP Page</title>
    </head>
    <body>
            
        
        <script src="js/bootstrap.min.js"></script>
           
 <c:import url="NavBar.jsp"></c:import>        
        
        <div class="d-flex justify-content-center">
            <h3>Make your bookings here</h3> </br>
             
        </div>
    <center>
        <h6><i>select what you desire......  </i></h6>
    </center>
                    
        <div class="container mt-4">
            <div class="row" >
                <%
                    if (!rooms.isEmpty()){
                    for(RoomBean r : rooms){
                %>
                <div class="col-sm-4 mb-2">
                    <div class="card">
                        <img src="<%=r.getImages()%>" class="card-img-top"  alt="">
                        <div class="card-body">
                            <h4 class="card-title"><%=r.getBedtype()%></h4>
                            <p class="card-text"><%=r.getDescription()%></p>
                            <p class="card-text text-danger"><%=r.getStatus()%></p>
                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago </small></p>
                            <a href="PopulateRoom?id=<%=r.getId()%>" class="btn btn-primary">Book</a>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>




    </body>
</html>
