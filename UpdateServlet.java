package minipro1;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		 try {
	        Class.forName("com.mysql.jdbc.Driver"); 
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
	        PreparedStatement ps=con.prepareStatement("Update users set email=?,fullname=?,password=? where username=?");
	        ps.setString(1,request.getParameter("email"));
	        ps.setString(2,request.getParameter("fullName"));
	        ps.setString(3,request.getParameter("password"));
	        ps.setString(4,request.getParameter("userName"));
	        int res=ps.executeUpdate();
	        if(res!=0){
	       	 RequestDispatcher rd=request.getRequestDispatcher("First.jsp");
	       	 rd.forward(request,response);
	        }
	    
	}catch(Exception e) {}
	}
}
