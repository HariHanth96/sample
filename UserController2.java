package minipro1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class UserController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private UserDao loginDao;

    public void init() {
        loginDao = new UserDao();
    }
    
    public UserController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
            authenticate(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}
	 private void authenticate(HttpServletRequest request, HttpServletResponse response)
			    throws Exception {
			        String username = request.getParameter("userName");
			        String password = request.getParameter("password");
			        PrintWriter out=response.getWriter();
			        out.println("success");
			        if (loginDao.validate(username, password)) {
			        	out.println("success");
			            jakarta.servlet.RequestDispatcher dispatcher = request.getRequestDispatcher("login-success.jsp");
			            dispatcher.forward(request, response);
			        } else {
			    
			        	 jakarta.servlet.RequestDispatcher dispatcher = request.getRequestDispatcher("First.jsp");
				            dispatcher.forward(request, response);
			        }
			    }
}

