<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="components/css.jsp"%>
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
	
	<c:if test="${empty userObj}">
	<c:redirect url = "user_login.jsp"></c:redirect>
	</c:if>
<div class="container-fulid backImg p-5">
		<p class="text-center fs-1 text-black">MEDIVED HOME</p>
	</div>
	<div class="container p-5">
		<div class="row">
		<div class="col-md-2 mt-3"
				style="padding-top: 30px; padding-left:100px;">
				<img alt="" src="img/img8.png" height="290px">
			</div>
			<div class="col-md-5 offset-md-2 mt-5">
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
						<form method="post" action="user_changePassword">

							<div class="mb-3">
								<lable class="form-lable">Enter Old Password</lable>
								<input type="text"  name="oldpassword" class="form-control">
							</div>

							<div class="mb-3">
								<lable class="form-lable">Enter New Password</lable>
								<input type="password" name="newpassword"
									class="form-control">

							</div>

                            <input type = "hidden" value ="${userObj.id}" name = "uid" >
							<button class="btn bg-success text-white col-md-6 offset-md-3">Change Password</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>