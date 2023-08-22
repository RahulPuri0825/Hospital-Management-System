<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DbConnect"%>
<%@page import="com.dao.SpacalistDao"%>
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
		<p class="text-center fs-1 text-black">MEDIVED HOME</p>
	</div>
	<div class="container p-4">
		<div class="row">
		<div class="col-md-4">
				<div class="card point-card">
					<div class="card-body">
						<h1 class="fs-4 text-center">Change Password</h1>
						<c:if test="${not empty succmsg }">
						<p class = "text-center text-success fs-6">${succmsg}</p>
						<c:remove var="succmsg" scope = "session"/>
						</c:if>
						<c:if test="${not empty errormsg }">
						<p class = "text-center text-danger fs-6">${errormsg}</p>
						<c:remove var="errormsg" scope = "session"/>
						</c:if>
						<hr>
						<form method="post" action="../docChangePassword">

							<div class="mb-3">
								<lable class="form-lable">Enter Old Password</lable>
								<input type="text"  name="oldpassword" class="form-control">
							</div>

							<div class="mb-3">
								<lable class="form-lable">Enter New Password</lable>
								<input type="password" name="newpassword"
									class="form-control">

							</div>

                            <input type = "hidden" value ="${docObj.id}" name = "uid" >
							<button class="btn bg-success text-white col-md-6 offset-md-3">Change Password</button>
						</form>
					</div>
				</div>
			</div>
			<div class = "col-md-6 offset-md-2">
			<div class = "card paint-card">
			<div class = "card-body">
			<h1 class="fs-4 text-center">Edit Profile</h1>
			<c:if test="${not empty sucd }">
						<p class = "text-center text-success fs-6">${sucd}</p>
						<c:remove var="sucd" scope = "session"/>
						</c:if>
						<c:if test="${not empty errord }">
						<p class = "text-center text-danger fs-6">${errord}</p>
						<c:remove var="errord" scope = "session"/>
						</c:if>
						<hr>
			<form action="../editDoctor" method="post">
					<div class="mb-3">
						<label class="form-lable">Full Name</label>
						<input type="text" required name="fullname" class="form-control" value = "${docObj.fullname}">
					</div>

					<div class="mb-3">
						<label class="form-lable">DOB</label>
						<input type="date" required name="dob" class="form-control" value = "${docObj.dob}">
					</div>

					<div class="mb-3">
						<label class="form-lable">Qualification</label>
						<input type="text" required name="qualification" value = "${docObj.qualification}"
							class="form-control">
					</div>

					<div class="mb-3">
						<label class="form-lable" style = "table-layout: fixed">Specialist</label>
						<select name="spec" required class="form-control" value = "${docObj.specialist}">
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
						<input type="text" required name="email" class="form-control" readonly value = "${docObj.email}">
					</div>

					<div class="mb-3">
						<label class="form-lable">Mobile No.</label>
						<input type="text" required name="mob" class="form-control" value = "${docObj.mobNo}">
					</div>
<input type = "hidden" name = "id" value = "${docObj.id}">
					<button type="submit" class="btn btn-success col-md-6 offset-md-3">Update</button>
				</form>
			</div>
			</div>
			</div>
		</div>
	</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>
