package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Specalist;

public class SpacalistDao {
private Connection conn;

public SpacalistDao(Connection conn) {
	super();
	this.conn = conn;
}
public boolean addSpacilist(String spac) {
	boolean f = false;
	try {
		String sql = "insert into specialist(spec_name) values(?)";
		PreparedStatement ps = conn.prepareStatement(sql);
         ps.setString(1, spac);
         int i = ps.executeUpdate();
         if (i==1) {
        	 f= true;
         }
         
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return f;
}

public List<Specalist> getAllSpecalist(){
	List<Specalist> list = new ArrayList<Specalist>();
	Specalist s = null;
	try {
		String sql = "select *from specialist";
		PreparedStatement ps = conn.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
while (rs.next()){
	s = new Specalist();
	s.setId(rs.getInt(1));
	s.setSpecalistName(rs.getString(2));
	list.add(s);
}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
	
}
}
