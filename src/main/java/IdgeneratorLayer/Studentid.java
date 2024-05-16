package IdgeneratorLayer;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Studentid {

	public Studentid() {
		// TODO Auto-generated constructor stub
	}
	
	
	// Complete it before : 30 Nov 12 pm
	
	private String generateStudentId() {
        // Get the current year
        String currentYear = new SimpleDateFormat("yy").format(new Date());

        // Retrieve the last student ID from the database and increment it
        String lastStudentId = getLastStudentIdFromDatabase();

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
    
}
