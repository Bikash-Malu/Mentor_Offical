package TestingModules;

import IdgeneratorLayer.Doubtid;
import IdgeneratorLayer.Userid;

public class Idtester {

	public Idtester() {
		// TODO Auto-generated constructor stub
	}
	
	
	public static void main (String[]args) {
		Doubtid di=new Doubtid();
//		System.out.print(di.generateDoubtId());
		
		Userid st=new Userid();
		System.out.println(st.generateStudentId());
		System.out.println(st.generateFacultyId());
		
	}
	
	
	

}
