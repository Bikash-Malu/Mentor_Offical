package DaoLayer;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
	
	
	
	public Boolean updateUser(User user) {
		Boolean f=false;
		try {
			String query="update student_master set name=?,role=?,dept=?,rollno=? where email=?";
			PreparedStatement pstm = this.con.prepareStatement(query);
			pstm.setString(1,user.getName());
			pstm.setString(2,user.getRole());
			pstm.setString(3,user.getDept());
			pstm.setInt(4,user.getRegdno());
			pstm.setString(5,user.getEmail().trim());
//			pstm.execute();
			pstm.execute();
            f = true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	public Boolean updatePass(User user) {
		Boolean f=false;
		try {
			String query="update student_master set password=? where email=?";
			PreparedStatement pstm = this.con.prepareStatement(query);
			pstm.setString(1,user.getPassword());
			pstm.setString(2,user.getEmail().trim());
			pstm.executeUpdate();
			f=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public List<User> getAllSt(String roll){
		List<User> st=new ArrayList();
		try {
			String query="select * from student_master where role=?";
			PreparedStatement pstm=con.prepareStatement(query);
			pstm.setString(1, roll);
			ResultSet rs=pstm.executeQuery();
			while(rs.next()) {
				int id=rs.getInt("slno.");
				String Name=rs.getString("name");
				String Email=rs.getString("email");
				String Branch=rs.getString("dept");
				String Adress=rs.getString("adress");
				int rollno=rs.getInt("rollno");
				String role=rs.getString("role");
				String Gender=rs.getString("gender");
				User student=new User(id,Name,Email,Gender,role,Adress,Branch,rollno);
				
				st.add(student);
				
			}
//			System.out.print(st);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return st;
	}
	
	public User getUserbyemail(String email) {
		User user=null;
		try {
			String query="select * from student_master where email=?";
			PreparedStatement pstm=con.prepareStatement(query);
			pstm.setString(1, email);
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
	
	
	
	public String getLastStudentIdFromDatabase() {
        try {
            // Prepare the SQL statement to retrieve the last student ID
            String sql = "SELECT rollno FROM student_master WHERE role = 'student' ORDER BY rollno DESC LIMIT 1";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
                // Execute the query
                ResultSet resultSet = preparedStatement.executeQuery();

                // Check if there is a result
                if (resultSet.next()) {
                    return resultSet.getString("rollno");
                }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
	
	
	public String getLastFacultyIdFromDatabase() {
        try {
            // Prepare the SQL statement to retrieve the last student ID
            String sql = "SELECT rollno FROM student_master WHERE role = 'faculty' ORDER BY rollno DESC LIMIT 1";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
                // Execute the query
                ResultSet resultSet = preparedStatement.executeQuery();

                // Check if there is a result
                if (resultSet.next()) {
                    return resultSet.getString("rollno");
                }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }
	
}




































