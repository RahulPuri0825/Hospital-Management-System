package com.doctorServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DbConnect;
import com.dao.DoctorDao;
import com.entity.Doctor;
@WebServlet("/editDoctor")
public class EditProfile extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullname = req.getParameter("fullname");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String specialist = req.getParameter("spec");
			String email = req.getParameter("email");
			String mobNo = req.getParameter("mob");
			
			
			int id = Integer.parseInt(req.getParameter("id"));
			
			Doctor d = new Doctor(id,fullname, dob, qualification, specialist, email, mobNo, "");
			DoctorDao dao = new DoctorDao(DbConnect.getConn());
			HttpSession session = req.getSession();
			if(dao.editDoctorProfile(d)) {
				
				Doctor updateDoctor = dao.getDoctorById(id);
				session.setAttribute("sucd", "Doctor Updated Successfully.");
				session.setAttribute("docObj", updateDoctor);
				resp.sendRedirect("doctor/edit_profile.jsp");
			
			}else {
				session.setAttribute("errord", "Somethig wrong on server.");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
			
			} catch (Exception e) {
			e.printStackTrace();
			}
		}
}
