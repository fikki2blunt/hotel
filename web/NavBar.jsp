<%-- 
    Document   : NavBar
    Created on : Apr 26, 2024, 2:24:44 PM
    Author     : FIKKI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <nav class="navbar navbar-expand-sm navbar-dark  bg-dark bg-info sticky-top">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="DashBoard.jsp">
                            <img src="Images/velcrow.png" alt="Logo" style="width:80px;" class="full-size">
                        </a>
                    </div>
                </nav>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>



                <div class="collapse navbar-collapse " id="mynavbar">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">HOME</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logIn.jsp">LOG IN</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="test.jsp">SERVICES</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Book.jsp">BOOK</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="DashBoard.jsp">ABOUT US</a>
                        </li>

                    </ul>
                    <!--form tag html outside if statement in scriplet tag, here you remove the out.print-->
                    <%
                        if(session.getAttribute("auth")== (null)){
                    %>
                     <a class="" href="Cart.jsp">
                    <img src="Images/icons8-cart-40.png" alt="Cart" style="width:40px"/>
                     </a>
                    <form class="d-flex " action ="Register.jsp "><input class="btn btn-dark" value="Sign Up" type = "submit"></form>
                        <%
                            }
                            else{
                        %>
                    <form class="d-flex "  action= "LogOutServlet"  method ="get"><input class="btn btn-dark" value ="Log out"  type="submit"/></form>"
                        <%
                               }
                        %>




                    <!--all inside scriplet-->
                    <%
                           if(session.getAttribute("auth")== (null)){
                           out.print(
                           "<form class='d-flex ' action ='Register.jsp '><input class='btn btn-dark' value='Sign Up' type = 'submit'></form>"
                           );
                        } else {
                         out.print(
                           "<form class='d-flex '  action= '/LogOutServlet'  method ='get'><input class='btn btn-dark' value ='Log out'  type='submit'/></form>"
                           );

                           
                        }
                    
                    %>

                </div>
            </div>
        </nav>

    </body>
</html>
