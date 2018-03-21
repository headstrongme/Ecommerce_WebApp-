<%-- 
    Document   : Logout
    Created on : 10 Jun, 2017, 2:26:33 PM
    Author     : Dell
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout Page</title>
        <%String Yes = request.getParameter("Yes");
       if("Yes".equals(Yes)) {
                       
                       session.invalidate();
                       %>
                       
                       <%--   response.sendRedirect("LogoffSuccess.jsp"); --%>
                       <jsp:forward page="LogoffSuccess.jsp"></jsp:forward>
                       <%
       }
       else
       {
           %>
           <jsp:forward page="Menu.jsp"></jsp:forward>
         <%--  response.sendRedirect("Menu.jsp"); --%>
           <%
       }
       %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
