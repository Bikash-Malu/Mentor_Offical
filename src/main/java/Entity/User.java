package Entity;

import java.sql.Timestamp;

public class User {

	
	
	private int id;
    private String name;
    private String email;
    private String password;
    private String gender;
    private String role;
    private String profile;
    private String adress;
    private String dept;
    private Integer regdno;
    private String profileimg;
    
    
    
   
	public String getProfileimg() {
		return profileimg;
	}
	public void setProfileimg(String profileimg) {
		this.profileimg = profileimg;
	}
	public Integer getRegdno() {
		return regdno;
	}
	public void setRegdno(Integer regdno) {
		this.regdno = regdno;
	}
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	
	
	public User(int id, String name, String email, String password, String gender, String role,
			String adress, String dept,Integer regdno) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.role = role;
		this.adress = adress;
		this.dept = dept;
		this.regdno=regdno;
		
	}
	
	public User() {
		// TODO Auto-generated constructor stub
	}
	
	public User(String name, String email, String password, String gender, String role,String dept,Integer regdno) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
		this.role = role;
		this.dept = dept;
		this.regdno=regdno;
	}
	
	
	
	
	
	
	
	
	
    
    

}
