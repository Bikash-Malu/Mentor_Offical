package DaoLayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Entity.Doubt;

public class DoubtDao {
	
	
	private Connection con;
	public DoubtDao(Connection con) {
		// TODO Auto-generated constructor stub
		this.con=con;
	}
	
	public Boolean saveDoubt(Doubt db) {
		Boolean f=false;
		
		try {
			String query="insert into doubt_master(student_id,doubt,dept)values(?,?,?)";
			PreparedStatement pst=this.con.prepareStatement(query);
			pst.setString(1, db.getStEmail());
			pst.setString(2, db.getDoubt());
			pst.setString(3, db.getDept());
			pst.executeUpdate();
			f=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public Boolean saveDoubtAnswer(Doubt db) {
		Boolean f=false;
		
		try {
			String query="update doubt_master set faculty_id=?,doubt_answer=?,answer_date=? where sl=?";
			PreparedStatement pst=this.con.prepareStatement(query);
			pst.setString(1, db.getFtEmail());
			pst.setString(2, db.getDoubtAns());
			pst.setString(3, db.getDoubt_date());
			pst.setInt(4, db.getSlno());
			pst.executeUpdate();
			f=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public List<Doubt> getalldoubt(String dept){
		List<Doubt> dt=new ArrayList();
		
		
		try {
			String query="select sl,student_id,doubt,doubt_date from doubt_master where dept=?";
			PreparedStatement pstm=con.prepareStatement(query);
			pstm.setString(1, dept);
			ResultSet rs=pstm.executeQuery();
			while(rs.next()) {
				int doutl=rs.getInt("sl");
				String stid=rs.getString("student_id");
				String doubt=rs.getString("doubt");
				String dtdate=String.valueOf(rs.getDate("doubt_date"));
				Doubt doubtobj=new Doubt(stid,doubt,dtdate,doutl);
				dt.add(doubtobj);
			}
//			System.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dt;
		
	}
	
	public Doubt getDoubt(int sl) {
		Doubt d=new Doubt();
		try {
			String query="select * from doubt_master where sl=?";
			PreparedStatement pstm=con.prepareStatement(query);
			pstm.setInt(1, sl);
			ResultSet rs=pstm.executeQuery();
			if(rs.next()) {
			d.setStEmail(rs.getString("student_id"));
			d.setDoubt(rs.getString("doubt"));
			d.setDoubt_date(rs.getString("doubt_date"));
			d.setDept(rs.getString("dept"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return d;
	}
	
	
	public List<Doubt> getResponses(String stemail) {
		List<Doubt> dt=new ArrayList();
		try {
			String query="select * from doubt_master where student_id=?";
			PreparedStatement pstm=con.prepareStatement(query);
			pstm.setString(1, stemail);
			ResultSet rs=pstm.executeQuery();
			while(rs.next()) {
				int doutl=rs.getInt("sl");
				String ftid=rs.getString("faculty_id");
				String doubt=rs.getString("doubt");
				String doubtans=rs.getString("doubt_answer");
				String dtdate=String.valueOf(rs.getDate("answer_date"));
				String doubtdate=String.valueOf(rs.getDate("doubt_date"));
				Doubt doubtobj=new Doubt(doutl,doubt,doubtdate,ftid,doubtans,dtdate);
				dt.add(doubtobj);
			}
//			System.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dt;
	}
	
	public String getLastDoubtIdFromDatabase() {
		try {
            // Prepare the SQL statement to retrieve the last doubt ID
            String sql = "SELECT sl FROM doubt_master ORDER BY sl DESC LIMIT 1";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            // Execute the query
            ResultSet resultSet = preparedStatement.executeQuery();
                // Check if there is a result
                if (resultSet.next()) {
                    return resultSet.getString("sl");
                }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
	}
	
	
	
	
	

}
