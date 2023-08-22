<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DbConnect"%>
<%@page import="com.dao.SpacalistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@page isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin|View Doctors</title>
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
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-black">Doctor's Details</p>
	</div>
	<div class = "container-fluid p-3">
	<div class = "row">
	<div class=col-md-12>
		<div class="card point-card">
			<div class="card-body">
				<c:if test="${not empty suc}">
					<p class="text-center text-success fs-5">${suc}</p>
					<c:remove var="suc" scope="session" />
				</c:if>

				<c:if test="${not empty error}">
					<p class="text-center text-danger fs-5">${error}</p>
					<c:remove var="error" scope="session" />
				</c:if>
				
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">DOB</th>
							<th scope="col">Qualification</th>
							<th scope="col">Specialist</th>
							<th scope="col">E-mail</th>
							<th scope="col">Mobile no.</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<%
						DoctorDao dao2 = new DoctorDao(DbConnect.getConn());
						List<Doctor> list2 = dao2.getAllDoctor();
						for (Doctor d : list2) {
						%>
						<tr style = "font-family : Garamond;">
							<td><%=d.getFullname()%></td>
							<td><%=d.getDob()%></td>
							<td><%=d.getQualification()%></td>
							<td><%=d.getSpecialist()%></td>
							<td><%=d.getEmail()%></td>
							<td><%=d.getMobNo()%></td>
							<td><a href="edit_doctor.jsp?id=<%= d.getId() %>" class="btn btn-sm btn-primary">Edit</a> <a
								href="../deletedoctor?id=<%= d.getId() %>" class="btn btn-sm btn-danger">Delete</a></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>