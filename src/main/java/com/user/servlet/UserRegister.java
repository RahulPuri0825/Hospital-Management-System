package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DbConnect;
import com.dao.UserDao;
import com.entity.User;
@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User u = new User(fullname, email, password);
		
		UserDao dao = new UserDao(DbConnect.getConn());
		HttpSession session = req.getSession();
		boolean f = dao.userRegister(u);
		if (f) {
			session.setAttribute("sucMsg", "Registered Successfully..Login Here");
			resp.sendRedirect("user_login.jsp");
			
			System.out.println("Registered Successfully...");
		}else {
			session.setAttribute("errorMsg", "Something Wrong on Server...");
			resp.sendRedirect("signup.jsp");
			System.out.println("Something Wrong on Server...");
		}
	} catch (Exception e) {
		// TODO: handle exception
	}
	}

}
