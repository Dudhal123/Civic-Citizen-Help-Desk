<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register | Civic Citizen HelpDesk</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/image/Helpdesk_Logo-removebg-preview.png">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<!-- CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">

<style>
.register-card {
	width: 100%;
	max-width: 700px;
}
</style>
</head>

<body>
	<!-- Top Header -->
	<nav class="navbar border-bottom top-header">
		<div class="container">
			<div class="Logo d-flex justify-content-center align-items-center">
				<img src="assets/image/Seal_of_Maharashtra-removebg-preview.png"
					alt="Maharashtra Logo" width="30" height="30">
				<p class="navbar nav-logo mb-0 text-light">Government of Maharashtra</p>
			</div>
			<div class="d-flex">
				<a href="#" class="btn format-btn">A<sup>+</sup></a>
				<a href="#" class="btn format-btn">A<sup>=</sup></a>
				<a href="#" class="btn format-btn">A<sup>-</sup></a>
				<select class="format-btn form-select language-switcher">
					<option value="en" selected>English</option>
					<option value="mr">Marathi</option>
					<option value="hi">Hindi</option>
				</select>
			</div>
		</div>
	</nav>

	<!-- Main Header -->
	<nav class="navbar bg-body-tertiary border-bottom p-0.1">
		<div class="container">
			<div class="Logo d-flex justify-content-between">
				<img src="assets/image/Helpdesk_Logo-removebg-preview.png"
					alt="HelpDesk Logo" width="80" height="80">
				<div class="d-flex flex-column justify-content-center">
					<p class="logo-text ms-2">Civic Citizen</p>
					<p class="logo-text ms-2">HelpDesk</p>
				</div>
			</div>
			<div class="d-flex align-items-center">
				<a href="home_page">
					<button class="btn me-2 rounded-pill login-btn" type="button">
						<i class="bi bi-arrow-left me-2"></i> Back to Home
					</button>
				</a>
				<img src="assets/image/Ashok_Stamb-removebg-preview.png"
					alt="HelpDesk Logo" width="55" height="55"
					class="ms-2 border-start ps-3">
			</div>
		</div>
	</nav>

	<!-- Main Content -->
	<div class="container-fluid mb-4 p-0 rounded shadow-sm main">
		<div class="container py-5 d-flex justify-content-center align-items-center">
			<div class="card shadow-lg border-0 rounded-4 register-card">
				<div class="card-body p-5">
					<h3 class="text-center mb-4">Register</h3>
					<form action="register" method="POST" onsubmit="return checkOtpVerified()">

						<!-- Full Name -->
						<label class="form-label fw-semibold">Full Name</label>
						<div class="row mb-3">
							<div class="col-md-4">
								<input type="text" class="form-control rounded-pill"
									placeholder="First Name" name="firstname" required>
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control rounded-pill"
									placeholder="Middle Name" name="middlename">
							</div>
							<div class="col-md-4">
								<input type="text" class="form-control rounded-pill"
									placeholder="Last Name" name="lastname" required>
							</div>
						</div>

						<!-- Address Section -->
						<label class="form-label fw-semibold">Address</label>
						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<select class="form-select rounded-pill" name="state" required>
									<option selected disabled>State</option>
								</select>
							</div>
							<div class="col-md-6 mb-2">
								<select class="form-select rounded-pill" name="district" required>
									<option selected disabled>District</option>
								</select>
							</div>
							<div class="col-md-6 mb-2">
								<select class="form-select rounded-pill" name="taluka" required>
									<option selected disabled>Taluka</option>
								</select>
							</div>
							<div class="col-md-6 mb-2">
								<select class="form-select rounded-pill" name="village" required>
									<option selected disabled>City / Village</option>
								</select>
							</div>
							<div class="col-12">
								<input type="text" class="form-control rounded-pill"
									placeholder="Pincode" maxlength="6" name="pincode" required>
							</div>
						</div>

						<!-- Email Section -->
						<div class="mb-3">
							<label>Email</label>
							<div class="input-group">
								<input type="email" id="email" class="form-control"
									placeholder="Enter email"name="email" required>
								<button type="button" id="sendOtpBtn" class="btn btn-primary">
									Send OTP
								</button>
							</div>
						</div>

						<div class="input-group mb-3">
							<input type="text" id="emailOtp" class="form-control"
								placeholder="Enter OTP">
							<button type="button" id="verifyOtpBtn" class="btn btn-success">
								Verify
							</button>
						</div>

						<p id="otpStatus" class="fw-semibold mt-2 text-center"></p>

						<!-- Mobile & Aadhar -->
						<div class="row mb-3">
							<div class="col-md-6">
								<label class="form-label fw-semibold">Mobile Number</label>
								<input type="text" class="form-control rounded-pill" maxlength="10"
									placeholder="Enter mobile" name="mobile" required>
							</div>
							<div class="col-md-6">
								<label class="form-label fw-semibold">Aadhar Number</label>
								<input type="text" class="form-control rounded-pill" maxlength="12"
									placeholder="Enter Aadhar" name="aadhar" required>
							</div>
						</div>

						<!-- Password -->
						<div class="mb-3 position-relative">
							<label class="form-label fw-semibold">Password</label>
							<div class="input-group">
								<input type="password" id="password"
									class="form-control rounded-start-pill"
									placeholder="Enter password" name="password" required>
								<button class="btn btn-outline-dark rounded-end-pill" type="button"
									onclick="togglePassword('password', this)">
									<i class="bi bi-eye"></i>
								</button>
							</div>
						</div>

						<div class="mb-4 position-relative">
							<label class="form-label fw-semibold">Confirm Password</label>
							<div class="input-group">
								<input type="password" id="confirm-password"
									class="form-control rounded-start-pill"
									placeholder="Confirm password" name="confirmpassword" required>
								<button class="btn btn-outline-dark rounded-end-pill" type="button"
									onclick="togglePassword('confirm-password', this)">
									<i class="bi bi-eye"></i>
								</button>
							</div>
						</div>

						<!-- Register Button -->
						<div class="d-grid">
							<button type="submit" class="btn rounded-pill login-btn">Register</button>
						</div>

						<!-- Link -->
						<div class="text-center mt-3">
							<p class="small mb-0">
								Already have an account? 
								<a href="login_page" class="text-decoration-none fw-semibold">Login</a>
							</p>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="bg-dark text-light py-4 border-top mt-auto">
		<div class="container text-center">
			<img src="assets/image/Helpdesk_Logo-removebg-preview.png"
				alt="HelpDesk Logo" width="60" class="mb-2">
			<h5 class="mb-1">Civic Citizen HelpDesk</h5>
			<p class="small mb-0">An Initiative by Government of Maharashtra</p>
			<hr class="bg-light my-3">
			<p class="small mb-0">
				© 2025 Civic Citizen HelpDesk. All Rights Reserved. |
				<a href="#" class="text-decoration-none text-light">Privacy Policy</a> |
				<a href="#" class="text-decoration-none text-light">Terms of Use</a>
			</p>
		</div>
	</footer>

	<!-- Password Toggle -->
	<script>
	function togglePassword(id, btn) {
		const input = document.getElementById(id);
		const icon = btn.querySelector('i');
		if (input.type === 'password') {
			input.type = 'text';
			icon.classList.replace('bi-eye', 'bi-eye-slash');
		} else {
			input.type = 'password';
			icon.classList.replace('bi-eye-slash', 'bi-eye');
		}
	}
	</script>

	<!-- ✅ OTP Script (Fixed with Session Preservation) -->
	<script>
	let isOtpVerified = false;

	document.getElementById("sendOtpBtn").addEventListener("click", function() {
	    const email = document.getElementById("email").value;
	    if (!email) {
	        alert("Please enter email!");
	        return;
	    }

	    fetch("/sendotp", {
	        method: "POST",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" },
	        body: "email=" + encodeURIComponent(email),
	        credentials: "include" // ✅ Keep same session
	    })
	    .then(res => res.text())
	    .then(msg => {
	        document.getElementById("otpStatus").innerText = msg;
	        document.getElementById("otpStatus").style.color = "blue";
	    })
	    .catch(() => {
	        document.getElementById("otpStatus").innerText = "Error sending OTP!";
	        document.getElementById("otpStatus").style.color = "red";
	    });
	});

	document.getElementById("verifyOtpBtn").addEventListener("click", function() {
	    const otp = document.getElementById("emailOtp").value;
	    if (!otp) {
	        alert("Enter OTP first!");
	        return;
	    }

	    fetch("/verifyotp", {
	        method: "POST",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" },
	        body: "otp=" + encodeURIComponent(otp),
	        credentials: "include" // ✅ Keep same session
	    })
	    .then(res => res.text())
	    .then(msg => {
	        document.getElementById("otpStatus").innerText = msg;
	        if (msg.toLowerCase().includes("verified")) {
	            isOtpVerified = true;
	            document.getElementById("otpStatus").style.color = "green";
	        } else {
	            isOtpVerified = false;
	            document.getElementById("otpStatus").style.color = "red";
	        }
	    })
	    .catch(() => {
	        document.getElementById("otpStatus").innerText = "Error verifying OTP!";
	        document.getElementById("otpStatus").style.color = "red";
	    });
	});

	function checkOtpVerified() {
	    if (!isOtpVerified) {
	        alert("Please verify your email with OTP before registering!");
	        return false;
	    }
	    return true;
	}
	</script>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>
