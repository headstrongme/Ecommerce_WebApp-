<%-- 
    Document   : Update
    Created on : 9 Jun, 2017, 11:33:09 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="JSP_ciit.MyOracleConnection"%>
<%@page import="java.sql.Connection" %>
    <!DOCTYPE html>     
             <html>     
             <head>     
             <title>Update form</title>  
             <%
           
            int value = Integer.parseInt(request.getParameter("update"));
            MyOracleConnection moc= new MyOracleConnection();
    Connection con=moc.getOracleConnection();
    Statement st=con.createStatement();
            String sql = " select * from customer where id='" + value + "'";
            ResultSet rs = st.executeQuery(sql);

          
        %>
             </head>     
             <body background="4B9OLVj.png"><center><br>     
             <font color='blue' size="14">Please fill below information<br></font>     
             <font color='orange' size="12">Registration Form</font><br>   
             <form action='UpdateData.jsp' method='post'>   
                  <%
            if (rs.next()) {
        %> 
            New ID:<input type='number' name='Id'> <br><br>     
            New Name:<input type='text' name='Name'> <br><br>     
           New  Address:<input type='text' name='Address'> <br><br>     
             Gender     
             <input type='radio' name='gender' value='M'/>Male     
             <input type='radio' name='gender' value='F'/>Female<br><br>     
             New Username:<input type='text' name='Username'> <br><br>     
           New  Password:<input type='text' name='Password'><br><br>    
           Old ID:<input type='number' name='OldId' placeholder="Enter this value ->"><font color="white"><%=value%>
            <%
            }
        %>
             <input type='submit' name='submit' value='Submit'> <br><br>     
             </form>     
             </center></body>     
             </html>     

