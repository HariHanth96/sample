package minipro1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import java.io.*;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/register")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init() {
        userDao = new UserDao();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("register.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 register(request, response);
	}
	 private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	        String fullName = request.getParameter("fullName");
	        String username = request.getParameter("userName");
	        String email=request.getParameter("email");
	        int phone=Integer.valueOf(request.getParameter("phone"));
	        String password = request.getParameter("password");

	        User user = new User();
	        user.setFullname(fullName);
	        user.setUsername(username);
	        user.setEmail(email);
	        user.setPhone(phone);
	        user.setPassword(password);

	        userDao.saveUser(user);

	        RequestDispatcher dispatcher = request.getRequestDispatcher("register-success.jsp");
	        dispatcher.forward(request, response);
	    }

}
