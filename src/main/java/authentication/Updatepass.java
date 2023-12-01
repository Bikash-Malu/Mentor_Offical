package authentication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DaoLayer.UserDao;
import Entity.User;
import Helper.ConnectionHelper;

/**
 * Servlet implementation class Updatepass
 */
@WebServlet("/UpdatePass")
public class Updatepass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatepass() {
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
		HttpSession session=request.getSession();
		String password=request.getParameter("password");	
		String page=request.getParameter("page");
		User userexist=(User) session.getAttribute("currentuser");
		User user = new User(userexist.getEmail(),password);
		UserDao dao=new UserDao(ConnectionHelper.getConnection());
		if(dao.updatePass(user)){
			response.sendRedirect(page.trim()+".jsp");
		}else {
			response.sendRedirect("error_page.jsp?page=updatepass.jsp");
		}
		
		
		
		
	}

}
