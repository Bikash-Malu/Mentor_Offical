package authentication;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Helper.ConnectionHelper;

/**
 * Servlet implementation class Forgetpass
 */
@WebServlet("/Forgetpass")
public class Forgetpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgetpass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession();
		String email=request.getParameter("email");
		System.out.println(email);
		ServletContext context=getServletContext();
		String uotp=request.getParameter("otp");
		String dotp=(String) session.getAttribute("otp");
		System.out.println(uotp);
		System.out.println(dotp);
//		System.out.println(uotp.equals(dotp));
		if(uotp.equals(dotp)) {
			System.out.print("1");
			context.setAttribute("email",email);
			response.sendRedirect("Forget2.jsp");
		}else {
			System.out.print("2");
			response.sendRedirect("Forget1.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		HttpSession session=request.getSession();
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		
		
		try {
			Connection conn=ConnectionHelper.getConnection();
			PreparedStatement pstm=conn.prepareStatement("UPDATE student_master set password = ? where email = ?");
			pstm.setString(1,password);
			pstm.setString(2,email.trim());
			pstm.execute();
//			System.out.print(page.trim()+".jsp");
//			response.sendRedirect(page.trim()+".jsp");
//			PrintWriter out=response.getWriter();
//			out.print("data inserted successfully");
			response.sendRedirect("login.jsp");
			conn.close();
		}catch(Exception e) {
			response.getWriter().append(e.toString()).append(request.getContextPath());
		}
		
		
		
		
	}

}
