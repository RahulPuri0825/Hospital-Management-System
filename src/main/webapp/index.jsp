<%@page import="com.DB.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Medived</title>
<%@include file="components/css.jsp"%> 

<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}


</style>

</head>
<body>
	<%@include file="components/navbar.jsp"%>
	<div class="container p-3"></div>
<%-- <% Connection conn = DbConnect.getConn();
out.print(conn);%>
	<div class="container p-3"></div> --%>

	<div id="carouselExampleFade" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/img4.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/img3.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/img10.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/img11.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>

		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class=" bg-success text-white text-center fs-3">KEY FEATURE OF
			OUR HOSPITAL</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5 text-primary">100% Safety</p>
								<p style="font-family: Garamond;">A better safe workplace is
									a direct result of hard work made by those working officers in
									the field of occupational health and safety.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5 text-primary">Clean Envirement</p>
								<p style="font-family: Garamond;">Hospital cleaners are very
									active and benefit from being physically fit to cope with lots
									of walking and heavy lifting of cleaning equipment.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-4">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5 text-primary">Friendly Doctors</p>
								<p style="font-family: Garamond;">A doctor who is trained in
									general medicine and who treats patients in a local community
									rather than at a hospital.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-4">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5 text-primary">Medical Research</p>
								<p style="font-family: Garamond;">Medical research involves
									research in a wide range of fields, such as biology etc with
									the goal of developing new medicines.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 mt-2"
				style="padding-top: 30px; padding-left:100px;">
				<img alt="" src="img/img7.png" height="400px">
			</div>

		</div>

	</div>



	<div class="container p-2">
		<p class=" bg-success text-white text-center fs-3">OUR TEAM</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/ceo.jpg" width="240px" height="300px">
						<p class="fw-bold fs-5">Dr.Munendra Singh</p>
						<p class="fs-7 text-primary">(CEO & Chairman)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/docmam.jpg" width="240px" height="300px">
						<p class="fw-bold fs-5">Dr.Sushmita Sain</p>
						<p class="fs-7 text-primary">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doc3.jpg" width="240px" height="300px">
						<p class="fw-bold fs-5">Dr.yogender Verma</p>
						<p class="fs-7 text-primary">(Chief Doctor)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doc2.jpg" width="240px" height="300px">
						<p class="fw-bold fs-5">Dr.Shiva Kumar</p>
						<p class="fs-7 text-primary">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			
			<div class="container p-3 mt-5"> 
			
			<div class="container p-2">
    <p class="bg-success text-white text-center fs-3">OUR SERVICES</p>
    <div class="row">
        <div class="col-md-4">
            <div class="card point-card">
                <div class="card-body">
                    <p class="fs-5 text-primary">Cardiology</p>
                    <p>Our experienced cardiology team provides top-notch care for heart-related conditions.
                    Cardology is a science that connects playing cards and astrology to guide us through life. 
                    This ancient magical method is called many names including the Cards of Life a science that connects playing cards and astrology.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card point-card">
                <div class="card-body">
                    <p class="fs-5 text-primary">Oncology</p>
                    <p>Our oncologists are dedicated to delivering comprehensive cancer care and treatments.
                    An oncologist is a doctor who treats cancer and provides medical care for a person diagnosed with cancer. 
                    An oncologist may also be called a cancer specialist. </p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card point-card">
                <div class="card-body">
                    <p class="fs-5 text-primary">Neurology</p>
                    <p>We have a team of skilled neurologists specializing in diagnosing and treating neurological disorders.
                    The science of medicine behind the functioning and treatment of disorders related to the nervous system comes under neurology. 
                    Physiological functions of the human body like sleeping, behaviour, etc.</p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
			<div class="container p-3 mt-5"> 
			<div class="container p-3">
    <p class="bg-success text-white text-center fs-3">LATEST NEWS</p>
    <div class="row">
        <div class="col-md-6">
            <div class="card point-card">
                <div class="card-body">
                    <p class="fs-5">New Research Discovery</p>
                    <p>Our hospital's researchers have made a groundbreaking discovery in the field of medicine. Read more about it in our latest blog post!</p>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card point-card">
                <div class="card-body">
                    <p class="fs-5">Community Health Initiative</p>
                    <p>We are launching a new community health initiative to promote healthy living and well-being. Learn how you can get involved!</p>
                </div>
            </div>
        </div>
    </div>
</div>
	</div>		
			
			<div class="container p-3">
    <div class="container p-3 mt-5"> 
        <p class="bg-success text-white text-center fs-3">ABOUT US</p>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card point-card">
                    <div class="card-body">
                        <h4 class="text-primary text-center mb-4">Welcome to Medived Hospital</h4>
                        <p class="about-text">
                            Medived Hospital is a leading healthcare institution dedicated to providing exceptional medical care to our community. With state-of-the-art facilities and a team of highly skilled healthcare professionals, we strive to deliver the best possible patient experience.
                        </p>
                        <p class="about-text">
                            Our mission is to promote wellness, prevent illness, and provide advanced medical treatments. We focus on compassionate care, cutting-edge technology, and evidence-based practices to ensure optimal outcomes for our patients.
                        </p>
                        <p class="about-text">
                            At Medived, we offer a comprehensive range of medical services, including cardiology, oncology, neurology, pediatrics, orthopedics, gynecology, and more. Our commitment to excellence drives us to continuously improve and innovate in the field of healthcare.
                        </p>
                        <p class="about-text">
                            With patient well-being as our top priority, we aim to create a healing environment where every individual is treated with dignity, respect, and empathy. Our team of doctors, nurses, and support staff work collaboratively to provide personalized care and support.
                        </p>
                        <p class="about-text">
                            Thank you for choosing Medived Hospital for your healthcare needs. We are honored to be your healthcare partner and are here to serve you with the utmost dedication and commitment to your well-being.
                        </p>
                        <p class="text-center"><strong>Your health is our priority!</strong></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
			
			
		</div>
	</div>
	<%@include file="../components/footer.jsp"%>
</body>
</html>