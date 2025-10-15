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
:root {
    --primary-blue: #01284F;
    --secondary-blue: #02386F;
    --accent-yellow: #FFC107;
    --light-bg: #F8F9FA;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(135deg, var(--primary-blue) 0%, var(--secondary-blue) 100%);
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

.main {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 2rem 0;
}

.register-card {
    width: 100%;
    max-width: 800px;
    border: none;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
}

.card-header {
    background: linear-gradient(135deg, var(--primary-blue) 0%, var(--secondary-blue) 100%);
    color: white;
    padding: 2rem;
    text-align: center;
    border-bottom: none;
}

.card-body {
    padding: 2.5rem;
    background-color: white;
}

.form-label {
    font-weight: 600;
    color: var(--primary-blue);
    margin-bottom: 0.5rem;
}

.form-control, .form-select {
    border: 2px solid #e9ecef;
    border-radius: 12px;
    padding: 0.75rem 1rem;
    transition: all 0.3s ease;
    font-size: 0.95rem;
}

.form-control:focus, .form-select:focus {
    border-color: var(--primary-blue);
    box-shadow: 0 0 0 0.2rem rgba(1, 40, 79, 0.1);
}

.input-group .form-control {
    border-radius: 12px 0 0 12px;
}

.input-group .btn {
    border-radius: 0 12px 12px 0;
    border: 2px solid var(--primary-blue);
    background-color: var(--primary-blue);
    color: white;
    font-weight: 600;
    transition: all 0.3s ease;
}

.input-group .btn:hover {
    background-color: var(--secondary-blue);
    transform: translateY(-1px);
}

.btn-primary {
    background-color: var(--primary-blue);
    border-color: var(--primary-blue);
    border-radius: 12px;
    padding: 0.75rem 2rem;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-primary:hover {
    background-color: var(--secondary-blue);
    border-color: var(--secondary-blue);
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(1, 40, 79, 0.3);
}

.btn-success {
    background-color: #28a745;
    border-color: #28a745;
    border-radius: 12px;
    padding: 0.75rem 1.5rem;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-success:hover {
    background-color: #218838;
    border-color: #218838;
    transform: translateY(-1px);
}

.login-btn {
    background-color: var(--accent-yellow);
    border: none;
    color: var(--primary-blue);
    font-weight: 700;
    padding: 0.75rem 2rem;
    border-radius: 50px;
    transition: all 0.3s ease;
    width: 100%;
}

.login-btn:hover {
    background-color: #e0a800;
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(255, 193, 7, 0.3);
}

.top-header {
    background-color: var(--primary-blue);
    font-size: 0.9rem;
}

.nav-logo {
    margin: 0; 
    font-size: 0.9rem !important;
    padding: 0 2rem 0 0.3rem!important;
}

.language-switcher {
    width: 6rem !important;
    font-size: 0.9rem !important;
    padding: 0.1rem 0.3rem !important;
    color: white !important;
    border-color: white !important;
    background-color: var(--primary-blue) !important;
}

.format-btn {
    margin-right: 0.5rem;
    font-size: 0.9rem !important;
    padding: 0.1rem 0.3rem !important;
    color: white !important;
    border-color: white !important;
    font-weight: 600;
}

.logo-text {
    font-size: 1.5rem;
    font-weight: bold;
    margin: 0;
    line-height: 1.2;
}

.logo-text:first-child {
    margin-bottom: -0.3rem;
}

.step-indicator {
    display: flex;
    justify-content: space-between;
    margin-bottom: 2rem;
    position: relative;
}

.step {
    display: flex;
    flex-direction: column;
    align-items: center;
    flex: 1;
    position: relative;
}

.step-number {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: #e9ecef;
    color: #6c757d;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: bold;
    margin-bottom: 0.5rem;
    z-index: 2;
    transition: all 0.3s ease;
}

.step.active .step-number {
    background-color: var(--primary-blue);
    color: white;
}

.step.completed .step-number {
    background-color: var(--accent-yellow);
    color: var(--primary-blue);
}

.step-line {
    position: absolute;
    top: 20px;
    left: 50%;
    right: -50%;
    height: 2px;
    background-color: #e9ecef;
    z-index: 1;
}

.step:last-child .step-line {
    display: none;
}

.step-label {
    font-size: 0.85rem;
    font-weight: 600;
    color: #6c757d;
    text-align: center;
}

.step.active .step-label {
    color: var(--primary-blue);
}

.otp-status {
    padding: 0.75rem;
    border-radius: 12px;
    text-align: center;
    font-weight: 600;
    margin: 1rem 0;
}

.otp-success {
    background-color: #d4edda;
    color: #155724;
    border: 1px solid #c3e6cb;
}

.otp-error {
    background-color: #f8d7da;
    color: #721c24;
    border: 1px solid #f5c6cb;
}

.otp-info {
    background-color: #d1ecf1;
    color: #0c5460;
    border: 1px solid #bee5eb;
}

.password-strength {
    height: 5px;
    border-radius: 5px;
    margin-top: 0.5rem;
    transition: all 0.3s ease;
}

.strength-weak {
    background-color: #dc3545;
    width: 25%;
}

.strength-medium {
    background-color: #ffc107;
    width: 50%;
}

.strength-strong {
    background-color: #28a745;
    width: 100%;
}

@media (max-width: 768px) {
    .card-body {
        padding: 1.5rem;
    }
    
    .step-label {
        font-size: 0.75rem;
    }
    
    .logo-text {
        font-size: 1.2rem;
    }
}

.is-valid {
    border-color: #28a745 !important;
}

.is-invalid {
    border-color: #dc3545 !important;
}

.valid-feedback, .invalid-feedback {
    display: block;
    margin-top: 0.25rem;
    font-size: 0.875rem;
}

.text-info {
    color: #0dcaf0 !important;
}

.text-warning {
    color: #ffc107 !important;
}
</style>
</head>

<body>
	<!-- Top Header -->
	<nav class="navbar border-bottom top-header py-2">
		<div class="container">
			<div class="Logo d-flex justify-content-center align-items-center">
				<img src="assets/image/Seal_of_Maharashtra-removebg-preview.png"
					alt="Maharashtra Logo" width="30" height="30">
				<p class="navbar nav-logo mb-0 text-light">Government of Maharashtra</p>
			</div>
			<div class="d-flex">
				<button class="btn format-btn" aria-label="Increase text size">A<sup>+</sup></button>
				<button class="btn format-btn" aria-label="Reset text size">A<sup>=</sup></button>
				<button class="btn format-btn" aria-label="Decrease text size">A<sup>-</sup></button>
				<select class="format-btn form-select language-switcher" aria-label="Select language">
					<option value="en" selected>English</option>
					<option value="mr">Marathi</option>
					<option value="hi">Hindi</option>
				</select>
			</div>
		</div>
	</nav>

	<!-- Main Header -->
	<nav class="navbar bg-white border-bottom p-2 shadow-sm">
		<div class="container">
			<div class="Logo d-flex justify-content-between">
				<img src="assets/image/Helpdesk_Logo-removebg-preview.png"
					alt="HelpDesk Logo" width="80" height="80">
				<div class="d-flex flex-column justify-content-center">
					<p class="logo-text ms-2 text-primary">Civic Citizen</p>
					<p class="logo-text ms-2 text-primary">HelpDesk</p>
				</div>
			</div>
			<div class="d-flex align-items-center">
				<a href="home_page">
					<button class="btn me-2 rounded-pill login-btn" type="button">
						<i class="bi bi-arrow-left me-2"></i> Back to Home
					</button>
				</a>
				<img src="assets/image/Ashok_Stamb-removebg-preview.png"
					alt="Ashok Stamb" width="55" height="55"
					class="ms-2 border-start ps-3 d-none d-md-block">
			</div>
		</div>
	</nav>

	<!-- Main Content -->
	<div class="container-fluid mb-4 p-0 main">
		<div class="container py-4 d-flex justify-content-center align-items-center">
			<div class="card shadow-lg register-card">
				<div class="card-header">
					<h2 class="mb-2">Create Your Account</h2>
					<p class="mb-0">Join Civic Citizen HelpDesk to report issues and track resolutions</p>
				</div>
				<div class="card-body">
					<!-- Progress Indicator -->
					<div class="step-indicator">
						<div class="step active">
							<div class="step-number">1</div>
							<div class="step-line"></div>
							<div class="step-label">Personal Info</div>
						</div>
						<div class="step">
							<div class="step-number">2</div>
							<div class="step-line"></div>
							<div class="step-label">Address</div>
						</div>
						<div class="step">
							<div class="step-number">3</div>
							<div class="step-line"></div>
							<div class="step-label">Verification</div>
						</div>
						<div class="step">
							<div class="step-number">4</div>
							<div class="step-label">Complete</div>
						</div>
					</div>

					<form action="register" method="POST" onsubmit="return validateForm()">
						<!-- Personal Information Section -->
						<div class="mb-4">
							<h5 class="text-primary mb-3"><i class="bi bi-person-circle me-2"></i>Personal Information</h5>
							
							<!-- Full Name -->
							<label class="form-label">Full Name</label>
							<div class="row mb-3">
								<div class="col-md-4 mb-2">
									<input type="text" class="form-control"
										placeholder="First Name" name="firstname" required>
								</div>
								<div class="col-md-4 mb-2">
									<input type="text" class="form-control"
										placeholder="Middle Name" name="middlename">
								</div>
								<div class="col-md-4 mb-2">
									<input type="text" class="form-control"
										placeholder="Last Name" name="lastname" required>
								</div>
							</div>

							<!-- Mobile & Aadhar -->
							<div class="row mb-3">
								<div class="col-md-6 mb-2">
									<label class="form-label">Mobile Number</label>
									<input type="text" class="form-control" maxlength="10"
										placeholder="Enter mobile number" name="mobile" required
										oninput="this.value = this.value.replace(/[^0-9]/g, '')">
								</div>
								<div class="col-md-6 mb-2">
									<label class="form-label">Aadhar Number</label>
									<input type="text" class="form-control" maxlength="12"
										placeholder="Enter Aadhar number" name="aadhar" required
										oninput="this.value = this.value.replace(/[^0-9]/g, '')">
								</div>
							</div>
						</div>

						<!-- Address Section -->
						<div class="mb-4">
							<h5 class="text-primary mb-3"><i class="bi bi-geo-alt me-2"></i>Address Information</h5>
							
							<div class="row mb-3">
								<div class="col-md-6 mb-2">
									<label class="form-label">State</label>
									<select class="form-select" name="state" required>
										<option selected disabled value="">Select State</option>
										<option value="Maharashtra">Maharashtra</option>
										<!-- Add more states as needed -->
									</select>
								</div>
								<div class="col-md-6 mb-2">
									<label class="form-label">District</label>
									<select class="form-select" name="district">
										<option selected disabled value="">Select District</option>
										<!-- Districts will be populated based on state selection -->
									</select>
								</div>
								<div class="col-md-6 mb-2">
									<label class="form-label">Taluka</label>
									<select class="form-select" name="taluka">
										<option selected disabled value="">Select Taluka</option>
										<!-- Talukas will be populated based on district selection -->
									</select>
								</div>
								<div class="col-md-6 mb-2">
									<label class="form-label">City / Village</label>
									<select class="form-select" name="village">
										<option selected disabled value="">Select City/Village</option>
										<!-- Villages will be populated based on taluka selection -->
									</select>
								</div>
								<div class="col-12">
									<label class="form-label">Pincode</label>
									<input type="text" class="form-control"
										placeholder="Enter pincode" maxlength="6" name="pincode" required
										oninput="this.value = this.value.replace(/[^0-9]/g, '')">
								</div>
							</div>
						</div>

						<!-- Email Verification Section -->
						<div class="mb-4">
							<h5 class="text-primary mb-3"><i class="bi bi-envelope me-2"></i>Email Verification</h5>
							
							<div class="mb-3">
								<label class="form-label">Email Address</label>
								<div class="input-group">
									<input type="email" id="email" class="form-control"
										placeholder="Enter your email address" name="email" required>
									<button type="button" id="sendOtpBtn" class="btn btn-primary">
										Send OTP
									</button>
								</div>
							</div>

							<div class="mb-3">
								<label class="form-label">Enter OTP</label>
								<div class="input-group">
									<input type="text" id="emailOtp" class="form-control"
										placeholder="Enter the OTP sent to your email" maxlength="6">
									<button type="button" id="verifyOtpBtn" class="btn btn-success">
										Verify OTP
									</button>
								</div>
							</div>

							<div id="otpStatus" class="otp-status"></div>
						</div>

						<!-- Password Section -->
						<div class="mb-4">
							<h5 class="text-primary mb-3"><i class="bi bi-shield-lock me-2"></i>Security</h5>
							
							<div class="mb-3">
								<label class="form-label">Password</label>
								<div class="input-group">
									<input type="password" id="password" class="form-control"
										placeholder="Create a strong password" name="password" required
										onkeyup="checkPasswordStrength(this.value)">
									<button class="btn btn-outline-secondary" type="button"
										onclick="togglePassword('password', this)">
										<i class="bi bi-eye"></i>
									</button>
								</div>
								<div id="passwordStrength" class="password-strength"></div>
								<small class="form-text text-muted">
									Password must be at least 8 characters with uppercase, lowercase, number and special character
								</small>
							</div>

							<div class="mb-3">
								<label class="form-label">Confirm Password</label>
								<div class="input-group">
									<input type="password" id="confirm-password" class="form-control"
										placeholder="Re-enter your password" name="confirmpassword" required>
									<button class="btn btn-outline-secondary" type="button"
										onclick="togglePassword('confirm-password', this)">
										<i class="bi bi-eye"></i>
									</button>
								</div>
								<div id="passwordMatch" class="mt-1"></div>
							</div>
						</div>

						<!-- Terms and Conditions -->
						<div class="mb-4">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="terms" required>
								<label class="form-check-label" for="terms">
									I agree to the <a href="#" class="text-primary">Terms of Service</a> and <a href="#" class="text-primary">Privacy Policy</a>
								</label>
							</div>
						</div>

						<!-- Register Button -->
						<div class="d-grid">
							<button type="submit" class="btn login-btn py-3">
								<i class="bi bi-person-plus me-2"></i> Create Account
							</button>
						</div>

						<!-- Login Link -->
						<div class="text-center mt-4">
							<p class="mb-0">
								Already have an account? 
								<a href="login_page" class="text-primary fw-semibold text-decoration-none">Sign In</a>
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

	<!-- JavaScript -->
	<script>
	// Password visibility toggle
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

	// Password strength indicator
	function checkPasswordStrength(password) {
		const strengthBar = document.getElementById('passwordStrength');
		let strength = 0;
		
		if (password.length >= 8) strength++;
		if (/[A-Z]/.test(password)) strength++;
		if (/[a-z]/.test(password)) strength++;
		if (/[0-9]/.test(password)) strength++;
		if (/[^A-Za-z0-9]/.test(password)) strength++;
		
		strengthBar.className = 'password-strength';
		if (strength <= 2) {
			strengthBar.classList.add('strength-weak');
		} else if (strength <= 4) {
			strengthBar.classList.add('strength-medium');
		} else {
			strengthBar.classList.add('strength-strong');
		}
		
		// Check password match
		const confirmPassword = document.getElementById('confirm-password').value;
		checkPasswordMatch(password, confirmPassword);
	}

	// Password match checker
	function checkPasswordMatch(password, confirmPassword) {
		const matchIndicator = document.getElementById('passwordMatch');
		if (confirmPassword === '') {
			matchIndicator.innerHTML = '';
			return;
		}
		
		if (password === confirmPassword) {
			matchIndicator.innerHTML = '<small class="text-success"><i class="bi bi-check-circle me-1"></i>Passwords match</small>';
		} else {
			matchIndicator.innerHTML = '<small class="text-danger"><i class="bi bi-x-circle me-1"></i>Passwords do not match</small>';
		}
	}

	// OTP Verification System
	let isOtpVerified = false;

	document.getElementById("sendOtpBtn").addEventListener("click", function() {
	    const email = document.getElementById("email").value;
	    const otpStatus = document.getElementById("otpStatus");
	    
	    if (!email) {
	        otpStatus.innerText = "Please enter your email address!";
	        otpStatus.className = "otp-status otp-error";
	        return;
	    }

	    // Show loading state
	    this.innerHTML = '<span class="spinner-border spinner-border-sm me-2"></span>Sending...';
	    this.disabled = true;

	    fetch("/sendotp", {
	        method: "POST",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" },
	        body: "email=" + encodeURIComponent(email),
	        credentials: "include"
	    })
	    .then(res => res.text())
	    .then(msg => {
	        otpStatus.innerText = msg;
	        if (msg.toLowerCase().includes("sent")) {
	            otpStatus.className = "otp-status otp-success";
	        } else {
	            otpStatus.className = "otp-status otp-error";
	        }
	    })
	    .catch(() => {
	        otpStatus.innerText = "Error sending OTP. Please try again.";
	        otpStatus.className = "otp-status otp-error";
	    })
	    .finally(() => {
	        this.innerHTML = "Send OTP";
	        this.disabled = false;
	    });
	});

	document.getElementById("verifyOtpBtn").addEventListener("click", function() {
	    const otp = document.getElementById("emailOtp").value;
	    const otpStatus = document.getElementById("otpStatus");
	    
	    if (!otp) {
	        otpStatus.innerText = "Please enter the OTP!";
	        otpStatus.className = "otp-status otp-error";
	        return;
	    }

	    // Show loading state
	    this.innerHTML = '<span class="spinner-border spinner-border-sm me-2"></span>Verifying...';
	    this.disabled = true;

	    fetch("/verifyotp", {
	        method: "POST",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" },
	        body: "otp=" + encodeURIComponent(otp),
	        credentials: "include"
	    })
	    .then(res => res.text())
	    .then(msg => {
	        otpStatus.innerText = msg;
	        if (msg.toLowerCase().includes("verified")) {
	            isOtpVerified = true;
	            otpStatus.className = "otp-status otp-success";
	            // Update progress indicator
	            document.querySelectorAll('.step')[2].classList.add('completed');
	        } else {
	            isOtpVerified = false;
	            otpStatus.className = "otp-status otp-error";
	        }
	    })
	    .catch(() => {
	        otpStatus.innerText = "Error verifying OTP. Please try again.";
	        otpStatus.className = "otp-status otp-error";
	    })
	    .finally(() => {
	        this.innerHTML = "Verify OTP";
	        this.disabled = false;
	    });
	});

	// Form validation
	function validateForm() {
	    const password = document.getElementById('password').value;
	    const confirmPassword = document.getElementById('confirm-password').value;
	    const terms = document.getElementById('terms').checked;
	    
	    if (!isOtpVerified) {
	        alert("Please verify your email with OTP before registering!");
	        return false;
	    }
	    
	    if (password !== confirmPassword) {
	        alert("Passwords do not match!");
	        return false;
	    }
	    
	    if (!terms) {
	        alert("Please accept the Terms of Service and Privacy Policy!");
	        return false;
	    }
	    
	    return true;
	}

	// Real-time password match checking
	document.getElementById('confirm-password').addEventListener('input', function() {
	    const password = document.getElementById('password').value;
	    checkPasswordMatch(password, this.value);
	});

	// Text size adjustment
	document.querySelectorAll('.format-btn').forEach((button, index) => {
	    button.addEventListener('click', function(e) {
	        e.preventDefault();
	        let currentSize = parseFloat(getComputedStyle(document.body).fontSize);
	        
	        if (index === 0) { // Increase
	            document.body.style.fontSize = (currentSize + 2) + 'px';
	        } else if (index === 1) { // Reset
	            document.body.style.fontSize = '16px';
	        } else if (index === 2) { // Decrease
	            document.body.style.fontSize = (currentSize - 2) + 'px';
	        }
	    });
	});
	
	// Real-time validation for email, mobile, and aadhar
	document.getElementById('email').addEventListener('blur', function() {
	    validateField('email', this.value, 'email');
	});

	document.querySelector('input[name="mobile"]').addEventListener('blur', function() {
	    validateField('mobile', this.value, 'mobile number');
	});

	document.querySelector('input[name="aadhar"]').addEventListener('blur', function() {
	    validateField('aadhar', this.value, 'Aadhar number');
	});

	function validateField(fieldType, value, fieldName) {
	    if (!value) return;
	    
	    // Show loading state
	    const field = document.querySelector(`[name="${fieldType}"]`);
	    const feedback = document.getElementById(fieldType + 'Feedback') || createFeedbackElement(fieldType, field);
	    feedback.innerHTML = `<span class="spinner-border spinner-border-sm me-1"></span>Checking...`;
	    feedback.className = 'text-info small';
	    
	    fetch('/check' + fieldType.charAt(0).toUpperCase() + fieldType.slice(1), {
	        method: 'POST',
	        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
	        body: fieldType + '=' + encodeURIComponent(value)
	    })
	    .then(res => res.text())
	    .then(result => {
	        if (result === 'EXISTS') {
	            field.classList.add('is-invalid');
	            field.classList.remove('is-valid');
	            feedback.className = 'invalid-feedback';
	            feedback.innerHTML = `<i class="bi bi-exclamation-circle me-1"></i>This ${fieldName} is already registered.`;
	        } else {
	            field.classList.add('is-valid');
	            field.classList.remove('is-invalid');
	            feedback.className = 'valid-feedback';
	            feedback.innerHTML = `<i class="bi bi-check-circle me-1"></i>This ${fieldName} is available.`;
	        }
	    })
	    .catch(error => {
	        console.error('Validation error:', error);
	        feedback.className = 'text-warning small';
	        feedback.innerHTML = `<i class="bi bi-exclamation-triangle me-1"></i>Validation failed. Please try again.`;
	    });
	}

	function createFeedbackElement(fieldType, field) {
	    const feedback = document.createElement('div');
	    feedback.id = fieldType + 'Feedback';
	    field.parentNode.appendChild(feedback);
	    return feedback;
	}

	// Enhanced form validation
	function validateForm() {
	    const password = document.getElementById('password').value;
	    const confirmPassword = document.getElementById('confirm-password').value;
	    const terms = document.getElementById('terms').checked;
	    
	    // Check if any field has validation errors
	    const invalidFields = document.querySelectorAll('.is-invalid');
	    if (invalidFields.length > 0) {
	        alert("Please fix the validation errors before submitting the form.");
	        return false;
	    }
	    
	    if (!isOtpVerified) {
	        alert("Please verify your email with OTP before registering!");
	        return false;
	    }
	    
	    if (password !== confirmPassword) {
	        alert("Passwords do not match!");
	        return false;
	    }
	    
	    if (!terms) {
	        alert("Please accept the Terms of Service and Privacy Policy!");
	        return false;
	    }
	    
	    return true;
	}

	// Display backend validation errors on page load
	document.addEventListener('DOMContentLoaded', function() {
	    // Check if there are any backend validation errors
	    const emailError = '<%= request.getAttribute("emailError") != null ? request.getAttribute("emailError") : "" %>';
	    const mobileError = '<%= request.getAttribute("mobileError") != null ? request.getAttribute("mobileError") : "" %>';
	    const aadharError = '<%= request.getAttribute("aadharError") != null ? request.getAttribute("aadharError") : "" %>';
	    
	    if (emailError) {
	        const emailField = document.querySelector('[name="email"]');
	        emailField.classList.add('is-invalid');
	        const feedback = document.getElementById('emailFeedback') || createFeedbackElement('email', emailField);
	        feedback.className = 'invalid-feedback';
	        feedback.innerHTML = `<i class="bi bi-exclamation-circle me-1"></i>${emailError}`;
	    }
	    
	    if (mobileError) {
	        const mobileField = document.querySelector('[name="mobile"]');
	        mobileField.classList.add('is-invalid');
	        const feedback = document.getElementById('mobileFeedback') || createFeedbackElement('mobile', mobileField);
	        feedback.className = 'invalid-feedback';
	        feedback.innerHTML = `<i class="bi bi-exclamation-circle me-1"></i>${mobileError}`;
	    }
	    
	    if (aadharError) {
	        const aadharField = document.querySelector('[name="aadhar"]');
	        aadharField.classList.add('is-invalid');
	        const feedback = document.getElementById('aadharFeedback') || createFeedbackElement('aadhar', aadharField);
	        feedback.className = 'invalid-feedback';
	        feedback.innerHTML = `<i class="bi bi-exclamation-circle me-1"></i>${aadharError}`;
	    }
	});
	</script>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>