<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User login page</title>
<%@include file = "components/css.jsp" %>
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
<%@include file = "components/navbar.jsp" %>
<div class="container-fulid backImg p-5">
		<p class="text-center fs-1 text-black">MEDIVED HOME</p>
	</div>
<div class="container p-5">
		<div class="row">
		<div class="col-md-2 mt-3"
				style="padding-top: 50px; padding-left:100px; ">
				<img alt="" src="img/img8.png" height="300px">
			</div>
			<div class="col-md-5 offset-md-2 mt-5">
				<div class="card point-card">
					<div class="card-body">
						<h1 class="fs-4 text-center">User Login</h1>
						 <c:if test="${not empty success }">
						<p class = "text-center text-success fs-6">${success}</p>
						<c:remove var="success" scope = "session"/>
						</c:if>
						 
						<c:if test="${not empty errorMsg }">
						<p class = "text-center text-danger fs-6">${errorMsg}</p>
						<c:remove var="errorMsg" scope = "session"/>
						</c:if>
						<hr>
						<form method="post" action="userlogin">

							<div class="mb-3">
								<lable class = "form-lable">Email Address</lable><input type="email" required name="email" class="form-control">
							</div>

							<div class="mb-3">
							<lable class = "form-lable">Password</lable><input type="password" required name="password"
									class="form-control">
									
							</div>


							<button type="submit" class="btn bg-success text-white col-md-6 offset-md-3">Login</button>
						</form>
						<br>Dont have an account?<a href = "signup.jsp" class = "clink">Create one</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="../components/footer.jsp"%>
</body>
</html>