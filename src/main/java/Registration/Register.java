package Registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DaoLayer.UserDao;
import Entity.User;
import Helper.ConnectionHelper;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		response.sendRedirect("Dashboard/login.jsp");
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		Integer regdno=Integer.parseInt(request.getParameter("rollno"));
		String role=request.getParameter("user");
		String gender=request.getParameter("gender");
		String dept=request.getParameter("dept");
		String password=request.getParameter("password");		
		
		User user = new User(name,email,password,gender,role,dept,regdno);
		UserDao dao=new UserDao(ConnectionHelper.getConnection());
		
		if(dao.saveData(user)) {
			response.sendRedirect("login.jsp");
		}else {
			response.sendRedirect("signup.jsp");
		}
		
		
//		try {
//			Connection conn=ConnectionHelper.getConnection();
//			
//			Statement stmt=conn.createStatement();
//			
//			
//			PrintWriter out=response.getWriter();
////			out.print("data inserted successfully");
//			response.sendRedirect("login.jsp");
//			conn.close();
//		}catch(Exception e) {
//			response.getWriter().append(e.toString()).append(request.getContextPath());
//		}
		
		
	}
	

}
