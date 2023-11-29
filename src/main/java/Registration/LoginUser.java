package Registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DaoLayer.UserDao;
import Entity.User;
import Helper.ConnectionHelper;


@WebServlet("/LoginUser")
public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		// After 
		String user_id=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		
		
		// To get the data 
		UserDao ud=new UserDao(ConnectionHelper.getConnection());
		User user=ud.getUser(user_id, password);
		if(user==null) {
			response.sendRedirect("login.jsp");
		}else {
			String role=user.getRole();
			session.setAttribute("currentuser",user);
			if("student".equals(role))
			{
				response.sendRedirect("Student.jsp");
			}
			else if("faculty".equals(role))
			{
				response.sendRedirect("Faculty.jsp");
			}
			else
			{
				response.sendRedirect("admin.jsp");
			}
		}
		
		
//		PrintWriter out=response.getWriter();
//		
//		try {
//			Connection con=ConnectionHelper.getConnection();
//			String sql="select * from student_master where email=? and password=?";
//			PreparedStatement pstm=con.prepareStatement(sql);
//			pstm.setString(1, user_id);
//			pstm.setString(2, password);
//			ResultSet rs=pstm.executeQuery();
////			System.out.print();
//			while(rs.next()) 
//			{
//				String role=rs.getString("role");  
//				String user_name=rs.getString("name");
//				HttpSession session=request.getSession();
//				session.setAttribute("user_name",user_name);
//				session.setAttribute("user_id",user_id);
//				session.setAttribute("user",role);
//				if("student".equals(role))
//				{
//					response.sendRedirect("Student.jsp");
//				}
//				else if("faculty".equals(role))
//				{
//					response.sendRedirect("Faculty.jsp");
//				}
//				else if("admin".equals(role))
//				{
//					response.sendRedirect("admin.jsp");
//				}
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			//e.printStackTrace();
//			System.out.println(e);
//		}
	}

}
