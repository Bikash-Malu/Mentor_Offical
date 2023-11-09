package Helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionHelper {

	public ConnectionHelper() {
		// TODO Auto-generated constructor stub
	}
	
	private static Connection con;

    public static Connection getConnection() {

        try {
           if(con==null){
        	Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/mentoringsystem","root","");
           }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}
