<%-- 
    Document   : UpdateData
    Created on : 10 Jun, 2017, 12:15:55 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Data Page</title>
        <%
            int id =Integer.parseInt(request.getParameter("Id"));
            String name=request.getParameter("Name");
            String gen = request.getParameter("gender");
            String addr=request.getParameter("Address");
            String u=request.getParameter("Username");
            String p=request.getParameter("Password");
            int Oldid =Integer.parseInt(request.getParameter("OldId"));
            MyOracleConnection moc= new MyOracleConnection();
    
    Connection con=moc.getOracleConnection();
    
    Statement st=con.createStatement();
    st.execute("Update customer set id="+id+",name='"+name+"',address='"+addr+"',gender='"+gen+"',username='"+u+"',password='"+p+"'"
            + " where id="+Oldid);
    st.execute("commit");
    response.sendRedirect("UpdateSuccessful.jsp");
            %>
    </head>
    <body>
        
    </body>
</html>
