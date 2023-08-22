package com.Admin.sevlet;

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
@WebServlet("/updatedoctor")
public class UpdateDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullname = req.getParameter("fullname");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String specialist = req.getParameter("spec");
			String email = req.getParameter("email");
			String mobNo = req.getParameter("mob");
			String password = req.getParameter("password");
			
			int id = Integer.parseInt(req.getParameter("id"));
			
			Doctor d = new Doctor(id,fullname, dob, qualification, specialist, email, mobNo, password);
			DoctorDao dao = new DoctorDao(DbConnect.getConn());
			HttpSession session = req.getSession();
			if(dao.UpdateDoctor(d)) {
				session.setAttribute("suc", "Doctor Updated Successfully.");
			resp.sendRedirect("admin/view_doctor.jsp");
			}else {
				session.setAttribute("error", "Somethig wrong on server.");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
			
			} catch (Exception e) {
			e.printStackTrace();
			}
		}
	}


