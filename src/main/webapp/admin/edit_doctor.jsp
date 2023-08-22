<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DbConnect"%>
<%@page import="com.dao.SpacalistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@page isELIgnored="false"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin|Edit Doctor</title>
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
	
	<div class="col-md-4 offset-md-4">
		<div class="card point-card">
			<div class="card-body">
				<p class="fs-3 text-center">Edit Doctor</p>
			    
				<% 
				int id =Integer.parseInt(request.getParameter("id"));
				DoctorDao Dao2 = new DoctorDao(DbConnect.getConn());
				Doctor d = Dao2.getDoctorById(id);
				%>
				<hr>
				<form action="../updatedoctor" method="post">
					<div class="mb-3">
						<label class="form-lable">Full Name</label>
						<input type="text" value = "<%=d.getFullname() %>" required name="fullname" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">DOB</label>
						<input type="date" value = "<%=d.getDob() %>" required name="dob" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">Qualification</label>
						<input type="text" value = "<%=d.getQualification() %>" required name="qualification"
							class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable" style = "table-layout: fixed">Specialist</label>
						<select name="spec" required class="form-control">
							<option><%=d.getSpecialist() %></option>
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
						<input type="text" value = "<%=d.getEmail() %>" required name="email" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">Mobile No.</label>
						<input type="text" value = "<%=d.getMobNo() %>" required name="mob" class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable">Password</label>
						<input type="text" value = "<%=d.getPassword() %>" required name="password"
							class="form-control">
					</div>
                     <input type = "hidden" name = "id" value = <%= d.getId() %>>
					<button type="submit" class="btn btn-primary col-md-6 offset-md-3">Update</button>
				</form>
			</div>
		</div>
	</div>


</div>
</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>