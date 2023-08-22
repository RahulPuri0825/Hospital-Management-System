<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DbConnect"%>
<%@page import="com.dao.SpacalistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored = "false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin|Add Doctors</title>
<%@include file="../components/css.jsp"%>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class = "container-fluid p-3">
	<div class = "row">
		<div class="col-md-2 p-3">
				<img src="../img/img12.png" class="d-block w-200" 
					height="500px" style="padding-top: 30px; padding-left:100px;">
			</div>
	<div class="col-md-4 offset-md-4">
		<div class="card point-card">
			<div class="card-body">
				<p class="fs-3 text-center">Add Doctor</p>
				<c:if test="${not empty sucMsg }">
					<p class="text-center text-success fs-5" role = "alert">${sucMsg}</p>
					<c:remove var="sucMsg" scope="session" />
				</c:if>

				<c:if test="${not empty errorMsg }">
					<p class="text-center text-danger fs-5">${errorMsg}</p>
					<c:remove var="errorMsg" scope="session" />
				</c:if>
				<hr>
				<form action="../adddoctor" method="post">
					<div class="mb-3">
						<label class="form-lable">Full Name</label>
						<input type="text" required name="fullname" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">DOB</label>
						<input type="date" required name="dob" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">Qualification</label>
						<input type="text" required name="qualification"
							class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable" style = "table-layout: fixed">Specialist</label>
						<select name="spec" required class="form-control">
							<option>--Select--</option>
							<%
							SpacalistDao Dao = new SpacalistDao(DbConnect.getConn());
							List<Specalist> list = Dao.getAllSpecalist();
							for (Specalist s : list) {
							%>
							<option><%=s.getSpecalistName()%></option>

							<%
							}
							%>
						</select>
					</div>

					<div class="mb-3">
						<label class="form-lable">Email</label>
						<input type="text" required name="email" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">Mobile No.</label>
						<input type="text" required name="mob" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">Password</label>
						<input type="text" required name="password"
							class="form-control">
					</div>

					<button type="submit" class="btn btn-primary col-md-12">Submit</button>
				</form>
			</div>
		</div>
	</div>

</div>
</div>
<div>

</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>