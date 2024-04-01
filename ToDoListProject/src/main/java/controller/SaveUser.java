package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.DaoUser;
import dto.JavaBeanUser;
@WebServlet("/saveuser")
@MultipartConfig(maxFileSize =10*1024*1024)
public class SaveUser extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long contact=Long.parseLong(req.getParameter("contact"));
		String password=req.getParameter("password");
		Part imagePart=req.getPart("image");
		byte[] imagebytes=imagePart.getInputStream().readAllBytes();
		JavaBeanUser user=new JavaBeanUser(id, name, email, contact, password, imagebytes);
		DaoUser dao= new DaoUser();
		try {
			int res=dao.saveUser(user);
			if(res>0)
			{
				resp.sendRedirect("login.jsp");
//				resp.getWriter().print("login success");
				
			}
			else
			{
				resp.sendRedirect("signUp.jsp");
//				resp.getWriter().print("login failed");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
