<%@page import="com.entity.Appointments"%>
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
		url("../img/img5.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<c:if test="${empty docObj }">
		<c:redirect url="../doctor_Login.jsp"></c:redirect>
	</c:if>
	<%@include file="navbar.jsp"%>
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-black">BE HEALTHY BE SAFE</p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-5 p-4">
				<img src="../img/img6.jpg" class="d-block w-200" height="500px">
			</div>

			<div class="col-md-6 md-3">
				<div class="card point-card">
					<div class="card-body">
						<p class="text-center fs-4">Patient Comment</p>
						<c:if test="${not empty emsg}">
							<p class="fs-6 text-center text-danger">${emsg}</p>
							<c:remove var="emsg" scope="session" />
						</c:if>
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						UserAppointmentDao dao = new UserAppointmentDao(DbConnect.getConn());

						Appointments a = dao.getAppointmentById(id);
						%>
						<form class="row " action="../updatestatus" method="post">


							<div class="col-md-6">
								<label>Patient Name</label> <input type="text"
									class="form-control" readonly value="<%=a.getFullName()%>">
							</div>


							<div class="col-md-6">
								<label>Age</label> <input type="number" class="form-control"
									readonly value="<%=a.getAge()%>">
							</div>


							<div class="col-md-6">
								<label >Phone No</label> <input
									type="text" class="form-control"
									 value="<%=a.getPhnNo()%>">
							</div>


							<div class="col-md-6">
								<label>Diseases</label> <input
							type="text" class="form-control"
									value="<%=a.getDiseases()%>">
							</div>



							<div class="col-md-12">
								<label>Comment</label>
								<textarea required name="comm" class="form-control" rows="3"
									cols=""></textarea>
							</div>

							<input type="hidden" name="id" value="<%=a.getId()%>"> <input
								type="hidden" name="did" value="<%=a.getDoctorId()%>">
							<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>
