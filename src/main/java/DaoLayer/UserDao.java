package DaoLayer;
import java.sql.*;

import Entity.User;
public class UserDao {

	
	
	private Connection con;
	public UserDao(Connection con) {
		// TODO Auto-generated constructor stub
		this.con=con;
	}
	
	public Boolean saveData(User user) {
		Boolean f=false;
		try {
			
			String query="insert into student_master(name,email,password,gender,role,dept,rollno) VALUES(?,?,?,?,?,?,?)";
			PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, user.getName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getPassword());
            pst.setString(4, user.getGender());
            pst.setString(5, user.getRole());
            pst.setString(6, user.getDept());
            pst.setInt(7, user.getRegdno());
            pst.executeUpdate();
            f = true;
       	
		}catch(Exception e) {
			e.printStackTrace();
		}
		//After Completion of Save Method i will Return true or if not return false;
		return f;
	}
	
	public User getUser(String email,String password) {
		User user=null;
		try {
			String query="select * from student_master where email=? and password=?";
			PreparedStatement pstm=con.prepareStatement(query);
			pstm.setString(1, email);
			pstm.setString(2, password);
			ResultSet rs=pstm.executeQuery();
			
			if(rs.next()) {
				user=new User();
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setGender(rs.getString("gender"));
				user.setDept(rs.getString("dept"));
				user.setRole(rs.getString("role"));
				user.setRegdno(rs.getInt("rollno"));
				user.setProfileimg(rs.getString("profileimg"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}

		return user;
	}
	

}




































