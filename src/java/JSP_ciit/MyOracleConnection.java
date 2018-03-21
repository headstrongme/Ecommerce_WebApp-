package JSP_ciit;
import java.sql.*;
public class MyOracleConnection {
   
public Connection getOracleConnection() throws ClassNotFoundException,SQLException
{

    Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
	String password="s";
	String username="sarthak";
	con = DriverManager.getConnection(url, username, password);
        return con;

}
}
