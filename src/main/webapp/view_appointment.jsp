<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Appointments"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.DB.DbConnect"%>
<%@page import="com.dao.UserAppointmentDao"%>
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
		url("img/img5.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

td, th {
	border: 1px solid #ddd;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

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
	<%@include file="components/navbar.jsp"%>
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-black">Appointment List</p>
	</div>
	<div class="container-fluid p-3">
		<div class="row">
			<div class=col-md-9>
				<div class="card point-card">
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>

								</tr>
							</thead>
							<tbody>
								<%
								User user = (User) session.getAttribute("userObj");
								UserAppointmentDao dao = new UserAppointmentDao(DbConnect.getConn());
								DoctorDao dao2 = new DoctorDao(DbConnect.getConn());
								List<Appointments> list = dao.getAllAppointmentByLoginUser(user.getId());
								for (Appointments a : list) {
									Doctor d = dao2.getDoctorById(a.getDoctorId());
								%>
								<tr style= "font-family: Garamond;">
									<td><%=a.getFullName() %></td>
									<td><%=a.getGender() %></td>
									<td><%=a.getAge() %></td>
								 <td><%=a.getAppt_date() %></td>
									<td><%=a.getDiseases() %></td>
			                      <td><%=d.getFullname() %></td> 
									<td>
										<%
										if ("Pending".equals(a.getStatus())) {
											%>	<a href="#" class="btn btn-sm btn-warning">Pending</a> <%
                                       } else {
                                       %> <%=a.getStatus()%> <%
                                       }
                                        %>
									</td>
								</tr>
								<%
								}
								%>

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-3 p-3">
				<img alt="" src="img/viewappoint.png" height = "600px" width = "350px">
			</div>
		</div>
	</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>