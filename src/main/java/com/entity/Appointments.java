package com.entity;

public class Appointments {
	private int id;
	private int userid;
	private String fullName;
	private String gender;
	private String age;
	private String appt_date;
	private String email;
	private String phnNo;
	private String diseases;
	private int doctorId;
	private String address;
	private String status;
	public Appointments() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Appointments(int userid, String fullName, String gender, String age, String appt_date, String email,
			String phnNo, String diseases, int doctorId, String address, String status) {
		super();
		this.userid = userid;
		this.fullName = fullName;
		this.gender = gender;
		this.age = age;
		this.appt_date = appt_date;
		this.email = email;
		this.phnNo = phnNo;
		this.diseases = diseases;
		this.doctorId = doctorId;
		this.address = address;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAppt_date() {
		return appt_date;
	}
	public void setAppt_date(String appt_date) {
		this.appt_date = appt_date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhnNo() {
		return phnNo;
	}
	public void setPhnNo(String phnNo) {
		this.phnNo = phnNo;
	}
	public String getDiseases() {
		return diseases;
	}
	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public String getaddress() {
		return address;
	}
	public void setaddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
