package JSP_ciit;

import java.sql.Connection;
import java.sql.*;
//import org.eclipse.jdt.internal.compiler.batch.Main;

public class LoginCheck 
{
static public int checkLogin(String u, String p) throws Exception
{
    MyOracleConnection moc= new MyOracleConnection();
    Connection con=moc.getOracleConnection();
    String sql;
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select id from customer where username='"+u+"' and password='"+p+"'");
        if(rs.next()) 
    {        
        return rs.getInt(1);
    }
        else{
           return 0;  
        }
  
}
  /* public static void main(String a[]) throws Exception
   {
     int b=  checkLogin("sam","s");
       System.out.println(b);
   }*/
}
