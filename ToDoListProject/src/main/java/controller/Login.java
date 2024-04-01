package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoUser;
import dto.JavaBeanUser;
@WebServlet("/userloginn")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password =req.getParameter("password");
		DaoUser dao=new DaoUser();
				try {
					JavaBeanUser u=dao.findByEmail(email);
					if(u!=null)
					{
						//verify the password
						if(u.getUserpassword().equals(password))
						{
//							resp.sendRedirect("home.jsp");
							HttpSession ses=req.getSession();
							req.getSession().setAttribute("jbu", u);
//							ses.setAttribute("user", u);
							req.getRequestDispatcher("home.jsp").include(req, resp);
						}
						else
						{
//							resp.sendRedirect("home.jsp");
//							resp.getWriter().print("password is wrong");
							req.setAttribute("message", "wrong is password");
							req.getRequestDispatcher("login.jsp").include(req, resp);
							
						}
					}
					else
					{
						req.setAttribute("message", "wrong email");
						req.getRequestDispatcher("login.jsp").include(req, resp);
						
					}
				} catch (ClassNotFoundException | SQLException e) {
					
					e.printStackTrace();
				}
			
		
	}
	

}
