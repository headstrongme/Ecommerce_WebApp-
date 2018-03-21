<%-- 
    Document   : Delete
    Created on : 10 Jun, 2017, 1:16:17 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String username[] = request.getParameterValues("delete");
        %>
        <title>Confirm Deletion</title>
    </head>
    <body>  
    <Center>  
        <p><b>Do you really want to delete this/these record(s) from DataBase?</b></P>           
        <form action='DeleteData.jsp' method='post'> 
            <%
                for (String user : username) {
            %>
            <p>  
                <input type='checkbox' name='delname' value='<%=user%>'><b><%=user%></b>  
            </p> 
            <% } %>
            <input type='submit' name='submit' value='Yes'>  
        </form>  
        <form action='Menu.jsp' method='get'>          
            <input type='submit' name='submit' value='no'>  
        </form>
            </Center>  
            </body>  
            </html> 