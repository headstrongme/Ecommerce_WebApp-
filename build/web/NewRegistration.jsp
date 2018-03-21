<%-- 
    Document   : NewRegistration
    Created on : 9 Jun, 2017, 4:43:19 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Reg Page</title>
        
    </head>
    <body background="Eminem-eminem-9776556-1280-800.jpg">
    <center><br>     
             <font color='blue' size="14">Please fill below information<br></font>     
             <font color='orange' size="12">Registration Form</font>    
             <form action='CreateAcct.jsp' method='post'>     
            <font color="yellow" > ID:<input type='number' name='Id'> <br><br>     
             Name:<input type='text' name='Name'> <br><br>     
             Address:<input type='text' name='Address'> <br><br>     
             Gender     
             <input type='radio' name='gender' value='M'/>Male     
             <input type='radio' name='gender' value='F'/>Female<br><br>     
             Username:<input type='text' name='Username'> <br><br>     
             Password:<input type='text' name='Password'></font><br><br>     
             <input type='submit' name='submit' value='Submit'> <br><br>     
             </form>     
        </center>
    </body>     
</html>
