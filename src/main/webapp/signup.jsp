<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="components/css.jsp"%>
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
</style>

</head>
<body>
	<%@include file="components/navbar.jsp"%>
<div class="container-fulid backImg p-5">
		<p class="text-center fs-1 text-black">MEDIVED HOME</p>
	</div>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-5 offset-md-3 mt-5">
				<div class="card point-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Register</h1>
						<c:if test="${not empty sucMsg }">
						<p class = "text-center text-success fs-3">${sucMsg}</p>
						<c:remove var="sucMsg" scope = "session"/>
						</c:if>
						<c:if test="${not empty errorMsg }">
						<p class = "text-center text-danger fs-3">${errorMsg}</p>
						<c:remove var="errorMsg" scope = "session"/>
						</c:if>
						<br>
						<form method="post" action="user_register">
						
						<div class="mb-3">
								<lable class="form-lable">Full Name</lable>
								<input type="text" required name="fullname" class="form-control">
							</div>

							<div class="mb-3">
								<lable class="form-lable">Email Address</lable>
								<input type="email" required name="email" class="form-control">
							</div>

							<div class="mb-3">
								<lable class="form-lable">Password</lable>
								<input type="password" required name="password"
									class="form-control">

							</div>


							<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>