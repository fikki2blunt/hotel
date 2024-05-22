<%-- 
    Document   : test
    Created on : Mar 4, 2024, 11:05:43 AM
    Author     : FIKKI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html>

    <head>
        <%--this is a test jsp oage --%>
        <%!
            int a = 5;
            public int add (){
            a=a + 20;
            return a;
           
                }
        %>

        <%
             
            int num = 5;
            if (num > 0){
            out.print("it's a positive number");
            }
            else{
            out.print("it's a negative number");
            }
            
            String [] names = {"Fikayo", "Joshua","Nonso","Tobi"};
             pageContext.setAttribute("names", names);
             
            String [] reg = {"Chinedu", "Akpabio","Tosin","Tobi"};
             session.setAttribute("reg", reg);
             
                
             String [] view = {"Spencer", "Lekan","Tosin","Tobi"};
             request.setAttribute("view", view);
             
        %>






        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" session="true">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <h2> The product of 2 * 5 is <%=add()%></h2>



        <c:set var="name" value="fikayo"/>
        <c:out value="My name is ${name}"/><br><!-- comment -->

        <c:if test= "${2>1}">
            <c:out value="it is greater"/><br>
        </c:if>


        <c:choose>
            <c:when test="${20>9}" >
                <% out.print ("it is greater");%><br>

            </c:when>

            <c:otherwise>
                <% out.print("it is lesser");%><br>
            </c:otherwise>

        </c:choose>

        <c:forEach begin="1" end="5">
            <c:out value="this is a loop"/><br>
        </c:forEach>


        <!--pageContent -->
        <c:forEach var="i" items="${pageScope.names}">
            <c:out value="${i}"/><br>
        </c:forEach>


        <c:forEach var="i" items="${reg}">
            <c:out value="${i}"/><br>
        </c:forEach>

        <c:forEach var="i" items="${view}">
            <c:out value="${i}"/><br>
        </c:forEach>

        <%--c:out value="call me king"></c:out--%> 



        <h2>Date Format</h2><!-- comment -->
        <c:set var="now" value="<%= new java.util.Date()%>"/>

        <p>  Formatted Date(1):  <fmt:formatDate type="time" value="${now}" /></p>

        <p>  Formatted Date(1):  <fmt:formatDate type="date"  value="${now}" /></p>

        <p>  Formatted Date(1):  <fmt:formatDate type="both"  value="${now}" /></p>

        <p>  Formatted Date(1):  <fmt:formatDate type="both" dateStyle="short"  value="${now}" /></p>

        <p>  Formatted Date(1):  <fmt:formatDate type="both" dateStyle="long"  value="${now}" /></p>

        <p>  Formatted Date(1):  <fmt:formatDate type="both" timeStyle="short"  value="${now}" /></p>

        <p>  Formatted Date(1):  <fmt:formatDate type="both" timeStyle="long"  value="${now}" /></p>


        <c:set var="now1" value="24-1-2004"/>
        <fmt:parseDate var="parsedate" value="${now1}" pattern="dd-MM-yyyy"/>
        <c:out value="${parsedate}"/><br>


        <h3> Number format</h3>
        <c:set var="num" value="120000.2309"/>
        <p> formatted Number(1): <fmt:formatNumber value="${num}" type ="currency"/></p>

        <p> formatted Number(1): <fmt:formatNumber maxIntegerDigits="4" value="${num}" type ="number"/></p>

        <p> formatted Number(1): <fmt:formatNumber maxFractionDigits="3" value="${num}" type ="number"/></p>

        <p> formatted Number(1): <fmt:formatNumber groupingUsed="false" value="${num}" type ="number"/></p>

        <p> formatted Number(1): <fmt:formatNumber maxIntegerDigits="3" value="${num}" type ="percent"/></p>

        <p> Currency in London:</p> 
        <fmt:setLocale value="en_GB"/>
        <p> <fmt:formatNumber value="${num}" type ="currency"/></p>

        <p> Currency in Nigeria:</p> 
        <fmt:setLocale value="en_NG"/>
        <p> <fmt:formatNumber value="${num}" type ="currency"/></p>

        <p> Currency in China:</p> 
        <fmt:setLocale value="zh_CN"/>
        <p> <fmt:formatNumber value="${num}" type ="currency"/></p>

        <p> Currency in London:</p> 
        <fmt:setLocale value="zgh_MA"/>
        <p> <fmt:formatNumber value="${num}" type ="currency"/></p>

        ////////////////////////////////////////
        <c:set var="text" value="Fikayo is the GOAT"/>
        <h2>length</h2>
        ${fn:length(text)}

        <h2> split</h2>
        <c:forEach var="string" items="${fn:split(text,'   ')}">
            <c:out value="${string}"/>
        </c:forEach>

        <h2> Cases</h2>
        Uppercase: ${fn:toUpperCase(text)}<br>
        Uppercase: ${fn:toLowerCase(text)}

        /////////////////////////////////
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/hotel"
                           user="root" password="fade_234"/>

        <sql:query dataSource = "${ds}" var="rs">
            SELECT * from users
        </sql:query>

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






        <table border="1" width="100%">
            <tr> 
                <td width="100%" colspan="2">
                    <p align="center">
                        <fmt:formatDate value="${now}"  type="both"  />
                    </p>

                </td>
                <c:forEach var="zone" items="<%= java.util.TimeZone.getAvailableIDs()%>">
                <tr>
                    <td width="30%">
                        <c:out value="${zone}"/>
                    </td>
                    <td width="70%">
                        <fmt:timeZone value="${zone}">
                            <fmt:formatDate value="${now}" type="both"/>
                        </fmt:timeZone>
                    </td>     
                </tr>


            </c:forEach>

        </table>




    </body>
</html>
