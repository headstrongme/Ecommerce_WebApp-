<%-- 
    Document   : Login.jsp
    Created on : 5 Jun, 2017, 10:05:14 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
          #LoginBox{
position:absolute;;
top:170px;
left:40%;
border-width:7px;  
border-style:ridge;
width:40%;   }  
        </style>
        <title>JSP Page</title>
    </head>
    <body background="eminem.jpg">
        <div id='LoginBox'>
            <center>
                <font size="7" color="Blue">Login to Eminem Stuffs</font><br/><br/>
                <form action="CheckLogin.jsp" method="post">
                    <font size="4" color='Red'>Username:</font> 
                    <input type="text" name="user" size="30" placeholder="Enter username"/><br/><br/>
                    <font size="4" Color='red'>Password:</font>
                    <input type="password" name="pass" size="30" placeholder="Enter password"/><br/><br/>
                    <input type="submit" name="submit" value="Login"/> 
                </form>
                <center/>
        </div>
    </body>
</html>
