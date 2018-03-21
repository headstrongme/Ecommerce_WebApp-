<%-- 
    Document   : DeleteData
    Created on : 10 Jun, 2017, 1:39:57 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="JSP_ciit.MyOracleConnection"%>
<%@page import="java.sql.Connection" %>
<jsp:useBean id="moc" class="JSP_ciit.MyOracleConnection" scope="request" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete data Page</title>
        <%
           // MyOracleConnection moc= new MyOracleConnection();
            Connection con=moc.getOracleConnection();
            Statement st=con.createStatement();
            String uname[] = request.getParameterValues("delname");
            for (String usr : uname) {
        con.setAutoCommit(false);
        st.execute("Delete customer where username='" + usr + "'");
    }
    st.close();
    con.close();
    %>
      <%--  response.sendRedirect("DeleteSuccessful.jsp");    --%>
      <jsp:forward page="DeleteSuccessful.jsp"></jsp:forward> 
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
