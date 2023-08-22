package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {
private Connection conn;

public UserDao(Connection conn) {
	super();
	this.conn = conn;
}

public boolean userRegister(User u)
{
	boolean f = false;
	try {
		String sql = "insert into userdetails (FullName, Email,  Password) values(?, ?, ?) ";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, u.getFullName());
		ps.setString(2, u.getEmail());
		ps.setString(3, u.getPassword());
		
		int i = ps.executeUpdate();
		if (i==1) {
			f= true;
		}
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	return f;
}

public User login(String em, String pas) {
	User u = null;
	try {
		String sql = "select * from userdetails where Email = ? and Password =  ?;";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, em);
		ps.setString(2, pas);
		
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			u = new User();
			u.setId(1);
			u.setFullName(rs.getString(2));
			u.setEmail(rs.getString(3));
			u.setPassword(rs.getString(4));
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return u;
}

public boolean checkOldPassword(int userid, String oldPassword ) {
	boolean f = false;
	try {
		String sql = "Select * from userdetails where ID = ? and Password = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, userid);
		ps.setString(2, oldPassword);
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			f = true; 
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return f;
}

public boolean changePassword(int userid, String newPassword ) {
	boolean f = false;
	try {
		String sql = "update userdetails set Password=? where ID = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, newPassword);
		ps.setInt(2, userid);
		
		int i = ps.executeUpdate();
		if(i==1) {
			f = true;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return f;
}

}
