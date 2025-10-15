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

.login-card {
    width: 100%;
    max-width: 450px;
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

.form-control {
    border: 2px solid #e9ecef;
    border-radius: 12px;
    padding: 0.75rem 1rem;
    transition: all 0.3s ease;
    font-size: 0.95rem;
}

.form-control:focus {
    border-color: var(--primary-blue);
    box-shadow: 0 0 0 0.2rem rgba(1, 40, 79, 0.1);
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

.info-box {
    background: rgba(255, 255, 255, 0.15);
    color: #fff;
    border-radius: 1rem;
    padding: 2rem;
    backdrop-filter: blur(5px);
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.info-box h4 {
    font-weight: 700;
    margin-bottom: 1rem;
}

.captcha-box {
    user-select: none; 
    -webkit-user-select: none;
    -moz-user-select: none; 
    font-family: 'Courier New', monospace;
    letter-spacing: 3px;
    background: linear-gradient(45deg, var(--primary-blue), var(--secondary-blue));
    color: white;
    border-radius: 10px;
    padding: 0.75rem 1.5rem;
    font-size: 1.5rem;
    font-weight: bold;
}

.alert-danger {
    border-radius: 12px;
    border: none;
    background-color: #f8d7da;
    color: #721c24;
    padding: 1rem;
    margin-bottom: 1.5rem;
}

.alert-success {
    border-radius: 12px;
    border: none;
    background-color: #d4edda;
    color: #155724;
    padding: 1rem;
    margin-bottom: 1.5rem;
}

.feature-icon {
    font-size: 3rem;
    margin-bottom: 1rem;
    opacity: 0.9;
}

.btn-outline-dark {
    border-radius: 12px;
    padding: 0.5rem 1rem;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-outline-dark:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

@media (max-width: 768px) {
    .logo-text {
        font-size: 1.2rem;
    }
    
    .card-body {
        padding: 1.5rem;
    }
    
    .info-box {
        margin-bottom: 2rem;
        padding: 1.5rem;
    }
    
    .feature-icon {
        font-size: 2.5rem;
    }
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
	<!-- /Top Header -->

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
	<!-- /Main Header -->

	<!-- Main Content -->
	<div class="container-fluid mb-4 p-0 main">
		<div class="container py-4">
			<div class="row justify-content-center align-items-center g-4">

				<!-- Left Info Box -->
				<div class="col-lg-4">
					<div class="info-box text-center">
						<i class="bi bi-shield-check feature-icon"></i>
						<h4>Secure Login</h4>
						<p class="mt-3">Access your account securely to manage your civic complaints and track their resolution status in real-time.</p>
						<div class="mt-4">
							<div class="d-flex align-items-center mb-3">
								<i class="bi bi-check-circle-fill text-warning me-2"></i>
								<span>Real-time complaint tracking</span>
							</div>
							<div class="d-flex align-items-center mb-3">
								<i class="bi bi-check-circle-fill text-warning me-2"></i>
								<span>Secure data protection</span>
							</div>
							<div class="d-flex align-items-center">
								<i class="bi bi-check-circle-fill text-warning me-2"></i>
								<span>24/7 access to services</span>
							</div>
						</div>
					</div>
				</div>

				<!-- Login Section -->
				<div class="col-lg-4">
					<div class="card shadow-lg login-card">
						<div class="card-header">
							<h2 class="mb-2">Welcome Back</h2>
							<p class="mb-0">Sign in to your Civic Citizen account</p>
						</div>
						<div class="card-body">
							<!-- Success Message -->
							<c:if test="${not empty param.success}">
								<div class="alert alert-success">
									<i class="bi bi-check-circle-fill me-2"></i>
									<strong>Success!</strong> 
									<c:choose>
										<c:when test="${param.success == 'registered'}">
											Registration successful! Please login with your credentials.
										</c:when>
									</c:choose>
								</div>
							</c:if>

							<!-- Error Message -->
							<c:if test="${not empty error}">
								<div class="alert alert-danger">
									<i class="bi bi-exclamation-triangle-fill me-2"></i>
									${error}
								</div>
							</c:if>

							<form action="login" method="POST">
								<!-- Username / Email -->
								<div class="mb-4">
									<label for="username" class="form-label">
										<i class="bi bi-person me-2"></i>Username / Email
									</label>
									<input type="text" class="form-control"
										id="username" name="username"
										placeholder="Enter your username or email" required>
								</div>

								<!-- Password -->
								<div class="mb-4">
									<label for="password" class="form-label">
										<i class="bi bi-lock me-2"></i>Password
									</label>
									<input type="password" class="form-control"
										id="password" name="password" placeholder="Enter your password"
										required>
								</div>

								<!-- Captcha Section -->
								<div class="mb-4">
									<label class="form-label">
										<i class="bi bi-shield-check me-2"></i>Security Verification
									</label>
									
									<!-- Captcha Display -->
									<div class="d-flex align-items-center justify-content-between mb-3">
										<div class="captcha-box text-center flex-grow-1 me-3" id="captcha-value"></div>
										<button type="button"
											class="btn btn-outline-dark"
											id="refresh-captcha" title="Refresh Captcha">
											<i class="bi bi-arrow-clockwise"></i>
										</button>
									</div>

									<!-- Hidden Captcha Value -->
									<input type="hidden" id="captcha-hidden" name="captchaGenerated">

									<!-- Captcha Input -->
									<label for="captcha-input" class="form-label small">Enter the code shown above</label>
									<input type="text" class="form-control"
										id="captcha-input" name="captchaEntered"
										placeholder="Type the security code" required>
								</div>

								<!-- Login Button -->
								<div class="d-grid">
									<button type="submit" class="btn login-btn py-3">
										<i class="bi bi-box-arrow-in-right me-2"></i> Sign In
									</button>
								</div>

								<!-- Links -->
								<div class="text-center mt-4">
									<a href="#" class="text-decoration-none text-primary small">
										<i class="bi bi-key me-1"></i>Forgot Password?
									</a>
									<p class="mt-3 mb-0">
										Don't have an account? 
										<a href="register_page"
											class="text-primary fw-semibold text-decoration-none">
											Create Account
										</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Right Info Box -->
				<div class="col-lg-4">
					<div class="info-box text-center">
						<i class="bi bi-person-plus feature-icon"></i>
						<h4>New to Civic Citizen?</h4>
						<p class="mt-3">Join our community today and start contributing to a better Maharashtra. Register now to report civic issues and track their resolution.</p>
						<div class="mt-4">
							<div class="d-flex align-items-center mb-3">
								<i class="bi bi-check-circle-fill text-warning me-2"></i>
								<span>Quick complaint registration</span>
							</div>
							<div class="d-flex align-items-center mb-3">
								<i class="bi bi-check-circle-fill text-warning me-2"></i>
								<span>Real-time status updates</span>
							</div>
							<div class="d-flex align-items-center">
								<i class="bi bi-check-circle-fill text-warning me-2"></i>
								<span>Direct communication with authorities</span>
							</div>
						</div>
						<a href="register_page" class="text-decoration-none">
							<button class="btn login-btn mt-4" type="button">
								<i class="bi bi-person-add me-2"></i>Register Now
							</button>
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
				© 2025 Civic Citizen HelpDesk. All Rights Reserved. | 
				<a href="#" class="text-decoration-none text-light">Privacy Policy</a> | 
				<a href="#" class="text-decoration-none text-light">Terms of Use</a>
			</p>
		</div>
	</footer>

	<!-- Captcha Script -->
	<script>
	  function generateCaptcha() {
	    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
	    let captcha = '';
	    for (let i = 0; i < 6; i++) {
	      captcha += chars.charAt(Math.floor(Math.random() * chars.length));
	    }
	    return captcha;
	  }

	  const captchaSpan = document.getElementById('captcha-value');
	  const captchaHidden = document.getElementById('captcha-hidden');
	  const refreshBtn = document.getElementById('refresh-captcha');

	  function setCaptcha() {
	    const captcha = generateCaptcha();
	    captchaSpan.textContent = captcha;
	    captchaHidden.value = captcha;
	  }

	  refreshBtn.addEventListener('click', setCaptcha);
	  document.addEventListener('DOMContentLoaded', setCaptcha);

	  // Auto-hide alerts after 5 seconds
	  document.addEventListener("DOMContentLoaded", function() {
	    const alerts = document.querySelectorAll('.alert');
	    alerts.forEach(alert => {
	      setTimeout(() => {
	        alert.style.opacity = '0';
	        setTimeout(() => {
	          if (alert.parentNode) {
	            alert.parentNode.removeChild(alert);
	          }
	        }, 300);
	      }, 5000);
	    });
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
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
</html>