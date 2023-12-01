package IdgeneratorLayer;

import java.text.SimpleDateFormat;
import java.util.Date;

import DaoLayer.UserDao;
import Helper.ConnectionHelper;

public class Userid {

	public Userid() {
		// TODO Auto-generated constructor stub
	}
	
	
	UserDao ud=new UserDao(ConnectionHelper.getConnection());
	
	public String generateStudentId() {
        // Get the current year
        String currentYear = new SimpleDateFormat("yy").format(new Date());

        // Retrieve the last student ID from the database and increment it
        String lastStudentId = ud.getLastStudentIdFromDatabase();

        if (lastStudentId == null) {
            // No students in the database yet, start with STy001
            return "ST" + currentYear + "001";
        } else {
            // Extract the numeric part, increment it, and format it back
            int numericPart = Integer.parseInt(lastStudentId.substring(4));
            numericPart++;
            return "ST" + currentYear + String.format("%03d", numericPart);
        }
    }
    
	
	public String generateFacultyId() {
        // Get the current year
        String currentYear = new SimpleDateFormat("yy").format(new Date());

        // Retrieve the last student ID from the database and increment it
        String lastFacultyId = ud.getLastFacultyIdFromDatabase();

        if (lastFacultyId == null) {
            // No students in the database yet, start with STy001
            return "FT" + currentYear + "001";
        } else {
            // Extract the numeric part, increment it, and format it back
            int numericPart = Integer.parseInt(lastFacultyId.substring(4));
            numericPart++;
            return "FT" + currentYear + String.format("%03d", numericPart);
        }
    }
    
}
