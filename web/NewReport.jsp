<%-- 
    Document   : NewReport
    Created on : 9 Jun, 2017, 6:02:11 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection" %>
<%@page import="JSP_ciit.MyOracleConnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <body>   
    <center>   
        <table border='2' cellspacing='5' style='text-align:center'>
            <% 
            MyOracleConnection moc= new MyOracleConnection();
    Connection con=moc.getOracleConnection();
    Statement st=con.createStatement();
                String sql = " select * from customer order by id";
                ResultSet rs = st.executeQuery(sql);

                ResultSetMetaData rsmd = rs.getMetaData();
                int columnCount = rsmd.getColumnCount();%>
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
            <%
                while (rs.next()) {%>
            <tr>
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
        <a href='SearchUpdate.jsp'>Update The Above Data</a>
        <br>
        <a href='SearchDelete.jsp'>Delete The Above Data</a>
    </center>
        <% rs.close();
            st.close(); %>
    </body>
</html>
