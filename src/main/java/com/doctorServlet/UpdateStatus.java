package com.doctorServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DbConnect;
import com.dao.UserAppointmentDao;
import com.entity.Appointments;
@WebServlet("/updatestatus")
public class UpdateStatus extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
	int id = Integer.parseInt(req.getParameter("id"));
	int did = Integer.parseInt(req.getParameter("did"));
	String comm = req.getParameter("comm");
	
	UserAppointmentDao dao = new UserAppointmentDao(DbConnect.getConn());
	HttpSession session = req.getSession();
	if(dao.updateCommentStatus(id, did, comm)) {
		session.setAttribute("sucmsg", "Comment Updated.");
		resp.sendRedirect("doctor/paitent.jsp");
	}else {
		session.setAttribute("emsg", "Something wrong on server.");
		resp.sendRedirect("doctor/comment.jsp");
	}
} catch (Exception e) {
	e.printStackTrace();
}
	}

}
