package Entity;

public class Doubt {
	
	private Integer slno;
	private String stEmail;
	private String doubt;
	private String doubt_date;
	private String ftEmail;
	private String doubtAns;
	private String answer_date;
	private String dept;
	
	
	
	public String getDept() {
		return dept;
	}



	public void setDept(String dept) {
		this.dept = dept;
	}



	public Integer getSlno() {
		return slno;
	}



	public void setSlno(Integer slno) {
		this.slno = slno;
	}



	public String getStEmail() {
		return stEmail;
	}



	public void setStEmail(String stEmail) {
		this.stEmail = stEmail;
	}



	public String getDoubt() {
		return doubt;
	}



	public void setDoubt(String doubt) {
		this.doubt = doubt;
	}



	public String getDoubt_date() {
		return doubt_date;
	}



	public void setDoubt_date(String doubt_date) {
		this.doubt_date = doubt_date;
	}



	public String getFtEmail() {
		return ftEmail;
	}



	public void setFtEmail(String ftEmail) {
		this.ftEmail = ftEmail;
	}



	public String getDoubtAns() {
		return doubtAns;
	}



	public void setDoubtAns(String doubtAns) {
		this.doubtAns = doubtAns;
	}



	public String getAnswer_date() {
		return answer_date;
	}



	public void setAnswer_date(String answer_date) {
		this.answer_date = answer_date;
	}
	
	



	


	public Doubt(String stEmail, String ftEmail, String doubtAns, String answer_date) {
		this.stEmail = stEmail;
		this.ftEmail = ftEmail;
		this.doubtAns = doubtAns;
		this.answer_date = answer_date;
	}



	public Doubt(Integer slno, String stEmail, String doubt, String doubt_date, String ftEmail, String doubtAns,
			String answer_date, String dept) {
		super();
		this.slno = slno;
		this.stEmail = stEmail;
		this.doubt = doubt;
		this.doubt_date = doubt_date;
		this.ftEmail = ftEmail;
		this.doubtAns = doubtAns;
		this.answer_date = answer_date;
		this.dept = dept;
	}

	

	public Doubt(Integer slno, String stEmail, String doubt, String dept) {
		super();
		this.slno = slno;
		this.stEmail = stEmail;
		this.doubt = doubt;
		this.dept = dept;
	}



	public Doubt(String stEmail, String doubt, String doubt_date,Integer slno) {
		super();
		this.stEmail = stEmail;
		this.doubt = doubt;
		this.doubt_date = doubt_date;
		this.slno=slno;
	}



	public Doubt() {
		// TODO Auto-generated constructor stub
	}



	public Doubt(Integer slno, String doubt, String ftEmail, String doubtAns, String answer_date) {
		super();
		this.slno = slno;
		this.doubt = doubt;
		this.ftEmail = ftEmail;
		this.doubtAns = doubtAns;
		this.answer_date = answer_date;
	}



	public Doubt(Integer slno, String doubt, String doubt_date, String ftEmail, String doubtAns, String answer_date) {
		super();
		this.slno = slno;
		this.doubt = doubt;
		this.doubt_date = doubt_date;
		this.ftEmail = ftEmail;
		this.doubtAns = doubtAns;
		this.answer_date = answer_date;
	}
	
	

}
