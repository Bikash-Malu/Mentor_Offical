package IdgeneratorLayer;

import DaoLayer.DoubtDao;
import Helper.ConnectionHelper;

public class Doubtid {

	public Doubtid() {
		// TODO Auto-generated constructor stub
	}
	
	DoubtDao dd=new DoubtDao(ConnectionHelper.getConnection());
	
	public String generateDoubtId() {
        // Retrieve the last doubt ID from the database and increment it
        String lastDoubtId = dd.getLastDoubtIdFromDatabase();

        if (lastDoubtId == null) {
            // No doubts in the database yet, start with D001
            return "D001";
        } else {
            // Extract the numeric part, increment it, and format it back
            int numericPart = Integer.parseInt(lastDoubtId.substring(1));
            numericPart++;
            return String.format("D%03d", numericPart);
        }
    }
	
	
	
	
}
