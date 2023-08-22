package com.user.servlet;

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

@WebServlet("/userappointment")
public class userAppointmentServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int userId = Integer.parseInt(req.getParameter("userid"));
		String fullName = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String appt_date = req.getParameter("appoint_date");
		String email = req.getParameter("email");
		String phnNo = req.getParameter("phno");
		String diseases = req.getParameter("diseases");
		int doctor_id = Integer.parseInt(req.getParameter("doct"));
		String address = req.getParameter("address");
		
		Appointments a = new Appointments(userId, fullName, gender, age, appt_date, email, phnNo, diseases, doctor_id, address, "Pending");
		
		UserAppointmentDao dao = new UserAppointmentDao(DbConnect.getConn());
		HttpSession session = req.getSession();
		 
		if (dao.userAppointment(a)) {
			session.setAttribute("sucMsg", "Appointment Scheduled Successfuly..");
			resp.sendRedirect("user_appointment.jsp");
			
		}else {
			session.setAttribute("errorMsg", "Something Wrong on Server...");
			resp.sendRedirect("user_appointment.jsp");
			System.out.println("Something Wrong on Server...");
		}
	}

}
