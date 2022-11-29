package register;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

      


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("pass");
		String contact=request.getParameter("contact");
	PrintWriter out=response.getWriter();	
	out.println(name);
	out.println(email);
	out.println(password);
	out.println(contact);
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jbdc::mysql:localhost:3360/user","yashal","YashalNawaid");
	PreparedStatement pst=con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?) ");
	pst.setString(1, name);
	pst.setString(2, email);
	pst.setString(3, password);
	pst.setString(4, contact);
	}
	catch(Exception e) {
		out.print(e);
	}
	}

}
