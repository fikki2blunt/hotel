<%-- 
    Document   : DashBoard
    Created on : 4 Mar 2024, 11:44:01
    Author     : ovie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css"/>
    </head>
    <body>
        <div class="d-flex">
            <div class="border w-50 align-content-start">
                <div class="border d-flex  m-5 justify-content-center">
                    <img class="rounded-circle img-fluid img-thumbnail" src="Images/velcrow.jpg" alt="Display picture"/>
                </div>

                <div class="d-block d-flex justify-content-center">
                    <h2>Username ${auth}</h2>
                </div> 
            </div>
                    <c:choose>
                        <c:when test="${auth != null}">
                   

            <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
                               url="jdbc:mysql://localhost/hotel"  
                               user="root"  password="fade_234"/>  

            <sql:query dataSource="${db}" var="rs">  
                SELECT * from users WHERE username = '${auth}';  
            </sql:query>
       
            <div class="border  w-50  mt-5  m-3  p-4">
            <c:forEach var="table" items="${rs.rows}">
                <div><h3>Firstname: <c:out value="${table.Firstname}"/></h3></div>
                <div><h3>Lastname: <c:out value="${table.Lastname}"/></h3></div>
                <div><h3>Email:  <c:out value="${table.Email}"/></h3></div>
            </c:forEach>
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"></c:redirect>
            </c:otherwise>
                 </c:choose>
            </div>


        </div>    /////////////////////////////////////////////////////////////////////////////



        <table border="1">
            <tr>
                <th>Firstname</th>                    
                <th>Lastname</th>
                <th>Email</th>

            </tr>
            <c:forEach var="table" items="${rs.rows}">
                <tr>
                    <td><c:out value="${table.Firstname}"/></td>
                    <td><c:out value="${table.Lastname}"/></td>
                    <td><c:out value="${table.Email}"/></td>
                </tr>
            </c:forEach>

        </table>
    </body>
</html>



