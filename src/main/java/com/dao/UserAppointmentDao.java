package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Appointments;



public class UserAppointmentDao {
	private Connection conn;

	public UserAppointmentDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean userAppointment(Appointments a)
	{
		boolean f = false;
		try {
			String sql = "insert into appointment (user_id, fullnane, gender, age, appoint_date, email, phno, diseases, doctor_id, address, status) values(?,?,?,?,?,?,?,?,?,?,?) ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, a.getUserid());
			ps.setString(2, a.getFullName());
			ps.setString(3, a.getGender());
			ps.setString(4, a.getAge());
			ps.setString(5, a.getAppt_date());
			ps.setString(6, a.getEmail());
			ps.setString(7, a.getPhnNo());
			ps.setString(8, a.getDiseases());
			ps.setInt(9, a.getDoctorId());
			ps.setString(10, a.getaddress());
			ps.setString(11, a.getStatus());
			
			int i = ps.executeUpdate();
			if (i==1) {
				f= true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	public List<Appointments> getAllAppointmentByLoginUser(int userId) {
		List<Appointments> list = new ArrayList<Appointments>();
		Appointments a = null;

		try {

			String sql = "select * from appointment where user_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) { 				
				a = new Appointments();
				a.setId(rs.getInt(1));
				a.setUserid(rs.getInt(2));
				a.setFullName(rs.getString(3));
				a.setGender(rs.getString(4));
				a.setAge(rs.getString(5));
				a.setAppt_date(rs.getString(6));
				a.setEmail(rs.getString(7));
				a.setPhnNo(rs.getString(8));
				a.setDiseases(rs.getString(9));
				a.setDoctorId(rs.getInt(10));
				a.setaddress(rs.getString(11));
				a.setStatus(rs.getString(12));
				list.add(a);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Appointments> getAllAppointmentByDoctorLogin(int doctorId) {
		List<Appointments> list = new ArrayList<Appointments>();
		Appointments a = null;

		try {

			String sql = "select * from appointment where doctor_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, doctorId);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) { 				
				a = new Appointments();
				a.setId(rs.getInt(1));
				a.setUserid(rs.getInt(2));
				a.setFullName(rs.getString(3));
				a.setGender(rs.getString(4));
				a.setAge(rs.getString(5));
				a.setAppt_date(rs.getString(6));
				a.setEmail(rs.getString(7));
				a.setPhnNo(rs.getString(8));
				a.setDiseases(rs.getString(9));
				a.setDoctorId(rs.getInt(10));
				a.setaddress(rs.getString(11));
				a.setStatus(rs.getString(12));
				list.add(a);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public Appointments getAppointmentById(int Id) {
		
		Appointments a = null;

		try {

			String sql = "select * from appointment where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, Id);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) { 				
				a = new Appointments();
				a.setId(rs.getInt(1));
				a.setUserid(rs.getInt(2));
				a.setFullName(rs.getString(3));
				a.setGender(rs.getString(4));
				a.setAge(rs.getString(5));
				a.setAppt_date(rs.getString(6));
				a.setEmail(rs.getString(7));
				a.setPhnNo(rs.getString(8));
				a.setDiseases(rs.getString(9));
				a.setDoctorId(rs.getInt(10));
				a.setaddress(rs.getString(11));
				a.setStatus(rs.getString(12));
			
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return a;
	}
	
	public boolean updateCommentStatus(int id,int doctId,String comment) {
		boolean f = false;
		try {
			String sql = "Update appointment set status=? where id=? and doctor_id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, comment);
			ps.setInt(2, id);
			ps.setInt(3, doctId);
			int i = ps.executeUpdate();
			if (i==1) {
				f= true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Appointments> getAllAppointment() {
		List<Appointments> list = new ArrayList<Appointments>();
		Appointments a = null;

		try {

			String sql = "select * from appointment order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) { 				
				a = new Appointments();
				a.setId(rs.getInt(1));
				a.setUserid(rs.getInt(2));
				a.setFullName(rs.getString(3));
				a.setGender(rs.getString(4));
				a.setAge(rs.getString(5));
				a.setAppt_date(rs.getString(6));
				a.setEmail(rs.getString(7));
				a.setPhnNo(rs.getString(8));
				a.setDiseases(rs.getString(9));
				a.setDoctorId(rs.getInt(10));
				a.setaddress(rs.getString(11));
				a.setStatus(rs.getString(12));
				list.add(a);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
}
