<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DbConnect"%>
<%@page import="com.dao.UserAppointmentDao"%>
<%@page import="com.entity.Appointments"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../components/css.jsp"%>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);	
}
.backImg {
	background: linear-gradient(rgba(0, 0, 0, .0), rgba(0, 0, 0, .0)),
		url("../img/img5.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
 td, th {
  border: 1px solid #ddd;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2;}

 tr:hover {background-color: #ddd;}

th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: #198754;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class=col-md-12>
		<div class="card point-card">
			<div class="card-body">
				<p class="fs-3 text-center">Patient details</p>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appointment</th>
							<th scope="col">E-Mail</th>
							<th scope="col">Mobile No.</th>
							<th scope="col">Diseases</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Address</th>
							<th scope="col">Status</th>

						</tr>
					</thead>
					<tbody>
						<%
						UserAppointmentDao dao = new UserAppointmentDao(DbConnect.getConn());
						DoctorDao dao2 = new DoctorDao(DbConnect.getConn());
						List<Appointments> list = dao.getAllAppointment();
						for (Appointments ap : list) {
							Doctor d = dao2.getDoctorById(ap.getDoctorId());
						%>
						<tr>
							<th><%= ap.getFullName() %></th>
							<td><%= ap.getGender() %></td>
							<td><%= ap.getAge() %></td>
							<td><%= ap.getAppt_date() %></td>
							<td><%= ap.getEmail() %></td>
							<td><%= ap.getPhnNo() %></td>
							<td><%= ap.getDiseases() %></td>
							<td><%= d.getFullname() %></td>
							<td><%= ap.getaddress() %></td>
							<td><%= ap.getStatus() %></td>

						</tr>
						<%
						}
						%>

					</tbody>
				</table>
				
</body>
</html>