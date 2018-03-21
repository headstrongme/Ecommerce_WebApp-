<%-- 
    Document   : UpdateRegRep
    Created on : 9 Jun, 2017, 6:24:38 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="JSP_ciit.MyOracleConnection"%>
<jsp:useBean id="moc" class="JSP_ciit.MyOracleConnection" scope="request" />

<!DOCTYPE html>
<html>  
    <head>  
        <%
            String name = request.getParameter("name");
           // int id = Integer.parseInt(request.getParameter("id"));
           // MyOracleConnection moc= new MyOracleConnection();
    Connection con=moc.getOracleConnection();
    Statement st=con.createStatement();
            String sql = " select * from customer where name LIKE '%" + name + "%'";// or id= '%" + id + "%'"; 
            ResultSet rs = st.executeQuery(sql);

            ResultSetMetaData rsmd = rs.getMetaData();
            int columnCount = rsmd.getColumnCount();
        %>
        <title>  
            SUmmary of data  you entered!  
        </title>  
    </head>  
    <body>  
        <form action='Update.jsp' method='post'>  
            <center>  
                <table border='2' cellspacing='5' style='text-align:center'>  
                    <th>  
                        selection   
                    </th> 
                    <%
                        for (int i = 1; i <= columnCount; i++) {
                            String col = rsmd.getColumnName(i);
                    %>
                    <th>  
                        <%= col%>      
                    </th> 
                    <%
                        }
                    %>
                    <% while (rs.next()) {%>
                    <tr>  
                        <td>  
                            <input type='radio' name='update' value='<%=rs.getString(1)%>'>  
                        </td>  
                        <td>  
                            <%=rs.getString(1)%>      
                        </td>  
                        <td>  
                            <%=rs.getString(2)%>      
                        </td>  
                        <td>  
                            <%=rs.getString(3)%>      
                        </td>  
                        <td>  
                            <%=rs.getString(4)%>      
                        </td>  
                        <td>  
                            <%=rs.getString(5)%>      
                        </td> 	
                        <td>  
                            <%=rs.getString(6)%>      
                        </td> 						
                    </tr>   
                    <%
                        }
                    %>
                </table>  
                <br>  
                <input type='submit' name='submit' value='Update Selected Record'>  
                </form>  
            </center>  
    </body>
    <%
                    rs.close();
                    st.close();
                    con.close();
    %>
</html> 

