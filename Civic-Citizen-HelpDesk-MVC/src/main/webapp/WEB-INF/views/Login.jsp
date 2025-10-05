<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login | Civic Citizen HelpDesk</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/image/Helpdesk_Logo-removebg-preview.png">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
</head>

<body>
	<!-- Top Header -->
	<nav class="navbar border-bottom top-header">
		<div class="container">
			<div class="Logo d-flex justify-content-center align-items-center">
				<img src="assets/image/Seal_of_Maharashtra-removebg-preview.png"
					alt="Maharashtra Logo" width="30" height="30"
					class="d-inline-block align-text-top">
				<p
					class="navbar nav-logo d-inline-block align-text-center mb-0 text-light">Government
					of Maharashtra</p>
			</div>
			<div class="d-flex">
				<a href="#" class="btn align-text-top mb-0 format-btn">A<sup>+</sup></a>
				<a href="#" class="btn align-text-top mb-0 format-btn">A<sup>=</sup></a>
				<a href="#" class="btn align-text-top mb-0 format-btn">A<sup>-</sup></a>
				<select name="language-switcher" id="language-switcher"
					class="format-btn form-select align-text-top language-switcher">
					<option value="en" selected>English</option>
					<option value="mr">Marathi</option>
					<option value="hi">Hindi</option>
				</select>
			</div>
		</div>
	</nav>
	<!-- /Top Header -->

	<!-- Main Header -->
	<nav class="navbar bg-body-tertiary border-bottom p-0.1">
		<div class="container">
			<div class="Logo d-flex justify-content-between">
				<img src="assets/image/Helpdesk_Logo-removebg-preview.png"
					alt="HelpDesk Logo" width="80" height="80"
					class="d-inline-block align-text-top">
				<div
					class="d-inline-block d-flex flex-column justify-content-center">
					<p class="align-text-center ms-2 logo-text">Civic Citizen</p>
					<p class="align-text-center ms-2 logo-text">HelpDesk</p>
				</div>
			</div>
			<div class="d-flex align-items-center">
				<a href="home_page">
					<button class="btn me-2 rounded-pill login-btn" type="button">
						<i class="bi bi-arrow-left me-2"></i> Back to Home
					</button>
				</a> <img src="assets/image/Ashok_Stamb-removebg-preview.png"
					alt="HelpDesk Logo" width="55" height="55"
					class="d-inline-block align-text-top ms-2 border-start ps-3">
			</div>
		</div>
	</nav>
	<!-- /Main Header -->

	<!-- Main Content -->
	<div class="container-fluid mb-4 p-0 rounded shadow-sm main">
		<div class="container py-5">
			<div class="row justify-content-center align-items-center g-4">

				<!-- Left Info Box -->
				<div class="col-md-3">
					<div class="info-box text-center">
						<h4>Welcome Back!</h4>
						<p class="mt-3 small">Access your account to report issues,
							track status, and stay updated with your city's services.</p>
						<i class="bi bi-person-check fs-1 mt-3"></i>
					</div>
				</div>

				<!-- Login Section -->
				<div
					class="col-md-6 d-flex justify-content-center align-items-center">
					<div class="card shadow-lg border-0 rounded-4 login-card">
						<div class="card-body p-5">
							<h3 class="text-center mb-4">Login</h3>
							<form action="login" method="POST">
							
								<p id="error-message" class="fw-semibold mt-2 text-center text-danger">${error}</p>
								<!-- Username / Email -->
								<div class="mb-3">
									<label for="username" class="form-label fw-semibold">Username
										/ Email</label> <input type="text" class="form-control rounded-pill"
										id="username" name="username"
										placeholder="Enter username or email" required>
								</div>

								<!-- Password -->
								<div class="mb-3">
									<label for="password" class="form-label fw-semibold">Password</label>
									<input type="password" class="form-control rounded-pill"
										id="password" name="password" placeholder="Enter password"
										required>
								</div>

								<!-- Captcha Display -->
								<div class="mb-3">
									<label class="form-label fw-semibold">Captcha</label>
									<div class="d-flex align-items-center justify-content-between">
										<span id="captcha-value"
											class="fw-bold fs-5 px-3 py-2 border rounded bg-light captcha-box"></span>
										<button type="button"
											class="btn btn-sm btn-outline-dark rounded-pill"
											id="refresh-captcha">↻</button>
									</div>
								</div>

								<!-- Hidden Captcha Value -->
								<input type="hidden" id="captcha-hidden" name="captchaGenerated">

								<!-- Captcha Input -->
								<div class="mb-3">
									<label for="captcha-input" class="form-label fw-semibold">Enter
										Captcha</label> <input type="text" class="form-control rounded-pill"
										id="captcha-input" name="captchaEntered"
										placeholder="Enter captcha" required>
								</div>
								<!-- Login Button -->
								<div class="d-grid">
									<button type="submit" class="btn rounded-pill login-btn">Login</button>
								</div>

								<!-- Links -->
								<div class="text-center mt-3">
									<a href="#" class="text-decoration-none text-dark small">Forgot
										Password?</a>
									<p class="mt-2 mb-0 small">
										Don’t have an account? <a href="register_page"
											class="text-decoration-none fw-semibold">Register</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Right Info Box -->
				<div class="col-md-3">
					<div class="info-box text-center">
						<h4>New User?</h4>
						<p class="mt-3 small">Create an new account.</p>
						<p class="mt-3 small">Join us today to easily report city
							issues and contribute to a better community.</p>
						<a href="register_page">
							<button class="btn me-2 rounded-pill login-btn" type="button">Register</button>
						</a>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- /Main Content -->

	<!-- Footer -->
	<footer class="bg-dark text-light py-4 border-top mt-auto">
		<div class="container text-center">
			<div class="mb-2">
				<img src="assets/image/Helpdesk_Logo-removebg-preview.png"
					alt="HelpDesk Logo" width="60" class="mb-2">
				<h5 class="mb-1">Civic Citizen HelpDesk</h5>
				<p class="small mb-0">An Initiative by Government of Maharashtra</p>
			</div>
			<hr class="bg-light my-3">
			<p class="small mb-0">
				© 2025 Civic Citizen HelpDesk. All Rights Reserved. | <a href="#"
					class="text-decoration-none text-light">Privacy Policy</a> | <a
					href="#" class="text-decoration-none text-light">Terms of Use</a>
			</p>
		</div>
	</footer>

	<!-- Captcha Script -->
	<script>
	  function generateCaptcha() {
	    return Math.floor(1000 + Math.random() * 9000);
	  }
	
	  const captchaSpan = document.getElementById('captcha-value');
	  const captchaHidden = document.getElementById('captcha-hidden');
	  const refreshBtn = document.getElementById('refresh-captcha');
	
	  function setCaptcha() {
	    const captcha = generateCaptcha();
	    captchaSpan.textContent = captcha;
	    captchaHidden.value = captcha; // send this value to backend
	  }
	
	  refreshBtn.addEventListener('click', setCaptcha);
	  document.addEventListener('DOMContentLoaded', setCaptcha);
	</script>
	
	<script>
	  document.addEventListener("DOMContentLoaded", function() {
	    const errorMsg = document.getElementById("error-message");
	    if (errorMsg) {
	      setTimeout(() => {
	        errorMsg.style.display = "none";
	      }, 3000); // 3000 ms = 3 seconds
	    }
	  });
</script>
	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>

</html>
