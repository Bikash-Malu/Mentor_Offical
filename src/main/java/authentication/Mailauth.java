package authentication;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Mailauth
 */
@WebServlet("/Mailauth")
public class Mailauth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mailauth() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String email=request.getParameter("email");
		System.out.println(email);
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String name=null;
		ServletContext context=getServletContext();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/mentoringsystem","root","");
//			Statement stmt=conn.createStatement();
			String sql="select name from student_master where email=?";
			System.out.println("2");
			PreparedStatement pstm=conn.prepareStatement(sql);
			System.out.println("3");
			pstm.setString(1,email);
			System.out.println("4");
			ResultSet rs=pstm.executeQuery();
			System.out.println("5");
			while(rs.next()) 
			{
			name=rs.getString("name");
			System.out.println("6");
			System.out.println(name);
			}
//			out.print("data inserted successfully");
//			response.sendRedirect("login.jsp");
//			conn.close();
		}catch(Exception e) {
			response.getWriter().append(e.toString()).append(request.getContextPath());
		}
		
		System.out.println(name);
		if(email!=null) {
			Newmail nm=new Newmail();
			Otpgen gen=new Otpgen();
//			PrintWriter out=response.getWriter();
//			out.print("OTP :");
//			out.print(gen.generateOTP(4));
			String otp=gen.generateOTP(4);
			String subject ="MetorOffical :Confirmation";
			String message="Hello ,Dear ,Your Otp is "+otp;
			String to=email;
			String from="sandeepkumar090304@gmail.com";
			nm.sendMail(message,subject,to,from);
			session.setAttribute("otp",otp);
//			out.print(otp);
			context.setAttribute("email",email);
			response.sendRedirect("Forget1.jsp");
		}else {
			response.sendRedirect("Forget.jsp");
		}
	}

}
