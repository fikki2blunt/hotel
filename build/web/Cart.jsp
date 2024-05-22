<%-- 
    Document   : Cart
    Created on : Apr 29, 2024, 2:00:44 PM
    Author     : FIKKI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="hotel.CartDao" %>
<%@page import="hotel.CartBean" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    </head>


    <body>
        <%
                    CartDao cd = new CartDao();
                    List<CartBean> cart = cd.cart();
        %>

        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <div class="m-4">
            <div class="d-flex align-content-center">
                <h3>Cart.</h3>
                <img  src="Images/icons8-cart-40.png" alt=""/>
            </div>

            <div class="m-3">
                <ol class="list-group list-group-numbered list-group-flush">
                    <%
                        if (!cart.isEmpty()){
                        for(CartBean c : cart){
                    %>

                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <div class="fw-bold"><%=c.getBedType()%></div>
                            <%=c.getRID()%>
                        </div>
                        <button class="btn btn-danger  ">Delete</button>
                        <span class="badge bg-primary rounded-pill m-2"><%=c.getQuantity()%></span>
                    </li>

                    <%
                         }}
                        
                    %>
                </ol>
            </div>
        </div>

    </body>
</html>
