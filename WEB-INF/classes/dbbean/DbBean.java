package dbbean;
import java.sql.*;
public class DbBean 
{
Connection con=null;

public Connection getConnect()
{
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","siddhant05");
return con;
}catch(Exception e)
{}
return con;
}
}