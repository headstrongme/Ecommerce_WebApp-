<%-- 
    Document   : LogOutPage
    Created on : 10 Jun, 2017, 2:20:05 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>  
    <head>  
        <title>  
            Logout!  
        </title>  
    </head>  
    <body background="eminem_rap.jpg">  
    <center>  

        <p style='font-family:verdana;font-size:40; color:blue'>  
            Do you Really want to log out? :(
        </p>  
         
            <form action='Logout.jsp' method='post'>  
                <th><input type='submit' name='Yes' value='Yes'> 
            </form>  
            <form action='Menu.jsp' method='get'>  
                <th><input type='submit' name='no' value='No'>
            </form>  
         
    </center>  
</body>  
</html> 
