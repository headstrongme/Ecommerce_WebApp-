<%-- 
    Document   : CreateAcct
    Created on : 9 Jun, 2017, 4:54:08 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.SQLException"%>
<%@page import="JSP_ciit.MyOracleConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<jsp:useBean id="moc" class="JSP_ciit.MyOracleConnection" scope="request"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    int id =Integer.parseInt(request.getParameter("Id"));
            String name=request.getParameter("Name");
            String gen = request.getParameter("gender");
            String addr=request.getParameter("Address");
            String u=request.getParameter("Username");
            String p=request.getParameter("Password");
   // MyOracleConnection moc= new MyOracleConnection();
    Connection con=moc.getOracleConnection();
    try{
    
    
    Statement st=con.createStatement();
    st.execute("insert into customer values("+id+",'"+name+"','"+addr+"','"+gen+"','"+u+"','"+p+"')");
    st.execute("commit");
    }catch(Exception e)
    {
        System.out.println("Handled");
    }
    %>
    <jsp:forward page="Congratulations.jsp"></jsp:forward>
    <%
   // response.sendRedirect("Congratulations.jsp");
    %>
    </body>
</html>
