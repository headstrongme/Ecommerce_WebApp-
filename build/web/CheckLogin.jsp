<%-- 
    Document   : CheckLogin
    Created on : 9 Jun, 2017, 2:26:45 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP CheckLogin Page</title>
       
    </head>
    <body>
         
             
        <%!  int id=0;String u,p; %>
            
          <%   String u=request.getParameter("user"); %>
          <%--String u= %>${param.user} --%>
<%-- request.getParameter("user"); --%>
                    <%
            String p=request.getParameter("pass");

            id= JSP_ciit.LoginCheck.checkLogin(u,p); 
             if(id>0)
            {
                %>
                <jsp:forward page="Menu.jsp"></jsp:forward>
                <%--session.setAttribute("Username", u);
              response.sendRedirect("Menu.jsp"); --%>
              <%
            }
            else
            {
         %>
        <font color='blue' size='7'>Sorry Check again</font>
        <%
            } 
        %>
    </body>
</html>
