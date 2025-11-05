<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard | Civic Citizen HelpDesk</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/image/Helpdesk_Logo-removebg-preview.png">

<!-- Bootstrap & Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Bootstrap.css">
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Dashboard.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

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
	<!-- Top Header -->

	<!-- Main Header -->
	<nav class="navbar bg-white border-bottom p-2 shadow-sm">
		<div class="container">
			<div class="Logo d-flex justify-content-between">
				<img src="assets/image/Helpdesk_Logo-removebg-preview.png"
					alt="HelpDesk Logo" width="80" height="80"
					class="d-inline-block align-text-top">
				<div
					class="d-inline-block d-flex flex-column justify-content-center">
					<p class="align-text-center ms-2 logo-text text-primary">Civic
						Citizen</p>
					<p class="align-text-center ms-2 logo-text text-primary">HelpDesk</p>
				</div>
			</div>
			<div class="d-flex align-items-center">
				<div class="dropdown me-3 position-relative">
					<button class="btn btn-outline-primary dropdown-toggle"
						type="button" id="userDropdown" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fas fa-user me-1"></i> ${username}
					</button>
					<ul class="dropdown-menu" aria-labelledby="userDropdown">
						<li><a class="dropdown-item" href="#"><i
								class="fas fa-user-circle me-2"></i> My Profile</a></li>
						<li><a class="dropdown-item" href="#"><i
								class="fas fa-bell me-2"></i> Notifications</a></li>
						<li><a class="dropdown-item" href="#"><i
								class="fas fa-cog me-2"></i> Settings</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item text-danger" href="logout"><i
								class="fas fa-sign-out-alt me-2"></i> Logout</a></li>
					</ul>
				</div>
				<img src="assets/image/Ashok_Stamb-removebg-preview.png"
					alt="Ashok Stamb" width="55" height="55"
					class="d-inline-block align-text-top ms-2 border-start ps-3 d-none d-md-block">
			</div>
		</div>
	</nav>
	<!-- Main Header -->

	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg main-navbar py-2">
		<div class="container nav-container">
			<button class="navbar-toggler text-white border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a
						class="nav-link nav-link-custom active" href="dashboard"> <i
							class="fas fa-tachometer-alt"></i> Dashboard
					</a></li>
					<li class="nav-item"><a class="nav-link nav-link-custom"
						href="file_complaint"> <i class="fas fa-edit"></i> New
							Complaint
					</a></li>
					<li class="nav-item"><a class="nav-link nav-link-custom"
						href="complaint_status"> <i class="fas fa-search"></i> Track
							Complaint
					</a></li>
					<li class="nav-item"><a class="nav-link nav-link-custom"
						href="complaint_history"> <i class="fas fa-history"></i>
							Complaint History
					</a></li>
					<li class="nav-item"><a class="nav-link nav-link-custom"
						href="services"> <i class="fas fa-concierge-bell"></i> All
							Services
					</a></li>
					<li class="nav-item"><a class="nav-link nav-link-custom"
						href="emergency"> <i class="fas fa-ambulance"></i> Emergency
					</a></li>
					<li class="nav-item"><a class="nav-link nav-link-custom"
						href="faq"> <i class="fas fa-question-circle"></i> FAQ & Help
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation Bar -->

	<!-- Dashboard Hero Section -->
	<section class="dashboard-hero">
		<div class="container">
			<div class="welcome-card">
				<div class="row align-items-center">
					<div class="col-md-8">
						<h1 class="mb-2">Welcome back, ${username}</h1>
						<p class="mb-0">
							Here's an overview of your civic complaints and activities. You
							have <strong>3 pending complaints</strong> that need your
							attention.
						</p>
					</div>
					<div class="col-md-4 text-center text-md-end">
						<div class="user-avatar d-inline-block"></div>
						<div class="mt-2">
							<span class="badge bg-warning text-dark">Citizen</span>
							<p class="mb-0 small">Member since Jan 2023</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Dashboard Main Content -->
	<div class="container py-4">
		<!-- Stats Overview -->
		<div class="dashboard-section">
			<div class="row">
				<div class="col-md-3 col-6 mb-4">
					<div class="card stat-card shadow-sm">
						<div class="card-body text-center">
							<div class="stat-icon text-primary">
								<i class="fas fa-tasks"></i>
							</div>
							<h3 class="text-primary">12</h3>
							<p class="text-muted mb-0">Total Complaints</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-6 mb-4">
					<div class="card stat-card shadow-sm">
						<div class="card-body text-center">
							<div class="stat-icon text-warning">
								<i class="fas fa-clock"></i>
							</div>
							<h3 class="text-warning">3</h3>
							<p class="text-muted mb-0">Pending</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-6 mb-4">
					<div class="card stat-card shadow-sm">
						<div class="card-body text-center">
							<div class="stat-icon text-info">
								<i class="fas fa-sync-alt"></i>
							</div>
							<h3 class="text-info">5</h3>
							<p class="text-muted mb-0">In Progress</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-6 mb-4">
					<div class="card stat-card shadow-sm">
						<div class="card-body text-center">
							<div class="stat-icon text-success">
								<i class="fas fa-check-circle"></i>
							</div>
							<h3 class="text-success">4</h3>
							<p class="text-muted mb-0">Resolved</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<!-- Left Column - Quick Actions & Recent Activity -->
			<div class="col-lg-4">
				<!-- Quick Actions -->
				<div class="dashboard-section">
					<h3 class="section-title">Quick Actions</h3>
					<div class="row g-3">
						<div class="col-md-6 col-lg-12">
							<div class="card quick-action-card shadow-sm">
								<div class="card-body text-center">
									<div class="action-icon bg-primary-light text-primary">
										<i class="fas fa-edit"></i>
									</div>
									<h5>File New Complaint</h5>
									<p class="small text-muted">Report a new civic issue</p>
									<a href="file_complaint" class="btn btn-primary btn-sm">Get
										Started</a>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-12">
							<div class="card quick-action-card shadow-sm">
								<div class="card-body text-center">
									<div class="action-icon bg-warning-light text-warning">
										<i class="fas fa-search"></i>
									</div>
									<h5>Track Complaint</h5>
									<p class="small text-muted">Check status of existing
										complaints</p>
									<a href="complaint_status" class="btn btn-warning btn-sm">Track
										Now</a>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-12">
							<div class="card quick-action-card shadow-sm">
								<div class="card-body text-center">
									<div class="action-icon bg-success-light text-success">
										<i class="fas fa-history"></i>
									</div>
									<h5>Complaint History</h5>
									<p class="small text-muted">View your past complaints</p>
									<a href="complaint_history" class="btn btn-success btn-sm">View
										History</a>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-12">
							<div class="card quick-action-card shadow-sm">
								<div class="card-body text-center">
									<div class="action-icon bg-info-light text-info">
										<i class="fas fa-question-circle"></i>
									</div>
									<h5>Get Help</h5>
									<p class="small text-muted">Find answers to common
										questions</p>
									<a href="faq" class="btn btn-info btn-sm">View FAQ</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Recent Activity -->
				<div class="dashboard-section">
					<h3 class="section-title">Recent Activity</h3>
					<div class="card shadow-sm">
						<div class="card-body">
							<div class="activity-timeline">
								<div class="activity-item d-flex mb-3">
									<div class="flex-shrink-0">
										<div
											class="bg-primary rounded-circle d-flex align-items-center justify-content-center"
											style="width: 40px; height: 40px;">
											<i class="fas fa-plus text-white"></i>
										</div>
									</div>
									<div class="flex-grow-1 ms-3">
										<h6 class="mb-0">New complaint filed</h6>
										<p class="mb-0 small text-muted">Water logging issue near
											Main Road</p>
										<small class="text-muted">2 hours ago</small>
									</div>
								</div>
								<div class="activity-item d-flex mb-3">
									<div class="flex-shrink-0">
										<div
											class="bg-success rounded-circle d-flex align-items-center justify-content-center"
											style="width: 40px; height: 40px;">
											<i class="fas fa-check text-white"></i>
										</div>
									</div>
									<div class="flex-grow-1 ms-3">
										<h6 class="mb-0">Complaint resolved</h6>
										<p class="mb-0 small text-muted">Street light repair at
											Gandhi Nagar</p>
										<small class="text-muted">1 day ago</small>
									</div>
								</div>
								<div class="activity-item d-flex mb-3">
									<div class="flex-shrink-0">
										<div
											class="bg-info rounded-circle d-flex align-items-center justify-content-center"
											style="width: 40px; height: 40px;">
											<i class="fas fa-sync-alt text-white"></i>
										</div>
									</div>
									<div class="flex-grow-1 ms-3">
										<h6 class="mb-0">Status updated</h6>
										<p class="mb-0 small text-muted">Pothole repair marked as
											In Progress</p>
										<small class="text-muted">2 days ago</small>
									</div>
								</div>
								<div class="activity-item d-flex">
									<div class="flex-shrink-0">
										<div
											class="bg-warning rounded-circle d-flex align-items-center justify-content-center"
											style="width: 40px; height: 40px;">
											<i class="fas fa-exclamation text-white"></i>
										</div>
									</div>
									<div class="flex-grow-1 ms-3">
										<h6 class="mb-0">Reminder sent</h6>
										<p class="mb-0 small text-muted">Provide feedback for
											resolved complaint</p>
										<small class="text-muted">3 days ago</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Right Column - Recent Complaints -->
			<div class="col-lg-8">
				<!-- Recent Complaints -->
				<div class="dashboard-section">
					<div class="d-flex justify-content-between align-items-center mb-3">
						<h3 class="section-title">Your Recent Complaints</h3>
						<a href="complaint_history" class="btn btn-outline-light btn-sm">View
							All</a>
					</div>

					<div class="card shadow-sm">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>Complaint ID</th>
											<th>Issue Type</th>
											<th>Date</th>
											<th>Status</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<tr class="complaint-row"
											onclick="viewComplaintDetails('CC2025-0012')">
											<td>#CC2025-0012</td>
											<td>Water Logging</td>
											<td>15 Jan 2025</td>
											<td><span class="status-badge status-pending">Pending</span></td>
											<td>
												<button class="btn btn-sm btn-outline-primary">View
													Details</button>
											</td>
										</tr>
										<tr class="complaint-row"
											onclick="viewComplaintDetails('CC2025-0011')">
											<td>#CC2025-0011</td>
											<td>Garbage Collection</td>
											<td>12 Jan 2025</td>
											<td><span class="status-badge status-inprogress">In
													Progress</span></td>
											<td>
												<button class="btn btn-sm btn-outline-primary">View
													Details</button>
											</td>
										</tr>
										<tr class="complaint-row"
											onclick="viewComplaintDetails('CC2025-0010')">
											<td>#CC2025-0010</td>
											<td>Pothole Repair</td>
											<td>10 Jan 2025</td>
											<td><span class="status-badge status-inprogress">In
													Progress</span></td>
											<td>
												<button class="btn btn-sm btn-outline-primary">View
													Details</button>
											</td>
										</tr>
										<tr class="complaint-row"
											onclick="viewComplaintDetails('CC2025-0009')">
											<td>#CC2025-0009</td>
											<td>Street Light</td>
											<td>05 Jan 2025</td>
											<td><span class="status-badge status-resolved">Resolved</span></td>
											<td>
												<button class="btn btn-sm btn-outline-success">Give
													Feedback</button>
											</td>
										</tr>
										<tr class="complaint-row"
											onclick="viewComplaintDetails('CC2025-0008')">
											<td>#CC2025-0008</td>
											<td>Water Supply</td>
											<td>02 Jan 2025</td>
											<td><span class="status-badge status-resolved">Resolved</span></td>
											<td>
												<button class="btn btn-sm btn-outline-success">Give
													Feedback</button>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>

				<!-- Complaint Statistics -->
				<div class="dashboard-section">
					<h3 class="section-title">Complaint Statistics</h3>
					<div class="row">
						<div class="col-md-6 mb-4">
							<div class="card shadow-sm">
								<div class="card-body">
									<h5 class="card-title">Status Distribution</h5>
									<div class="mt-4">
										<div class="d-flex justify-content-between mb-2">
											<span>Resolved</span> <span>33%</span>
										</div>
										<div class="progress progress-bar-custom mb-3">
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 33%"></div>
										</div>

										<div class="d-flex justify-content-between mb-2">
											<span>In Progress</span> <span>42%</span>
										</div>
										<div class="progress progress-bar-custom mb-3">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 42%"></div>
										</div>

										<div class="d-flex justify-content-between mb-2">
											<span>Pending</span> <span>25%</span>
										</div>
										<div class="progress progress-bar-custom">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 25%"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 mb-4">
							<div class="card shadow-sm">
								<div class="card-body">
									<h5 class="card-title">Issue Categories</h5>
									<div class="mt-4">
										<div class="d-flex justify-content-between mb-2">
											<span>Road Problems</span> <span>35%</span>
										</div>
										<div class="progress progress-bar-custom mb-3">
											<div class="progress-bar bg-primary" role="progressbar"
												style="width: 35%"></div>
										</div>

										<div class="d-flex justify-content-between mb-2">
											<span>Water Issues</span> <span>25%</span>
										</div>
										<div class="progress progress-bar-custom mb-3">
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 25%"></div>
										</div>

										<div class="d-flex justify-content-between mb-2">
											<span>Electricity</span> <span>20%</span>
										</div>
										<div class="progress progress-bar-custom mb-3">
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 20%"></div>
										</div>

										<div class="d-flex justify-content-between mb-2">
											<span>Others</span> <span>20%</span>
										</div>
										<div class="progress progress-bar-custom">
											<div class="progress-bar bg-secondary" role="progressbar"
												style="width: 20%"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Quick Tips -->
				<div class="dashboard-section">
					<div class="card shadow-sm">
						<div class="card-body">
							<h5 class="card-title text-primary">
								<i class="fas fa-lightbulb me-2"></i> Quick Tips for Effective
								Complaints
							</h5>
							<div class="row mt-3">
								<div class="col-md-6">
									<div class="d-flex mb-3">
										<div class="flex-shrink-0">
											<i class="fas fa-camera text-primary me-2"></i>
										</div>
										<div class="flex-grow-1">
											<h6 class="mb-1">Add Photos</h6>
											<p class="small text-muted mb-0">Include clear images of
												the issue for faster resolution</p>
										</div>
									</div>
									<div class="d-flex mb-3">
										<div class="flex-shrink-0">
											<i class="fas fa-map-marker-alt text-primary me-2"></i>
										</div>
										<div class="flex-grow-1">
											<h6 class="mb-1">Precise Location</h6>
											<p class="small text-muted mb-0">Provide exact location
												details with landmarks</p>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="d-flex mb-3">
										<div class="flex-shrink-0">
											<i class="fas fa-file-alt text-primary me-2"></i>
										</div>
										<div class="flex-grow-1">
											<h6 class="mb-1">Clear Description</h6>
											<p class="small text-muted mb-0">Describe the issue in
												detail with specific problems</p>
										</div>
									</div>
									<div class="d-flex">
										<div class="flex-shrink-0">
											<i class="fas fa-bell text-primary me-2"></i>
										</div>
										<div class="flex-grow-1">
											<h6 class="mb-1">Track Regularly</h6>
											<p class="small text-muted mb-0">Check status updates and
												respond to official queries</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="bg-dark text-light py-4 border-top mt-5">
		<div class="container">
			<div class="row">
				<div class="col-md-4 text-center text-md-start mb-3 mb-md-0">
					<img src="assets/image/Helpdesk_Logo-removebg-preview.png"
						alt="HelpDesk Logo" width="60" class="mb-2">
					<h5 class="mb-1">Civic Citizen HelpDesk</h5>
					<p class="small mb-0">An Initiative by Government of
						Maharashtra</p>
				</div>
				<div class="col-md-4 text-center mb-3 mb-md-0">
					<h6>Quick Links</h6>
					<div class="d-flex flex-column">
						<a href="dashboard"
							class="text-light text-decoration-none small py-1">Dashboard</a>
						<a href="file_complaint"
							class="text-light text-decoration-none small py-1">File
							Complaint</a> <a href="complaint_status"
							class="text-light text-decoration-none small py-1">Track
							Complaint</a> <a href="contact"
							class="text-light text-decoration-none small py-1">Contact Us</a>
					</div>
				</div>
				<div class="col-md-4 text-center text-md-end">
					<h6>Contact Information</h6>
					<p class="small mb-1">
						<i class="fas fa-phone-alt me-2"></i> Helpline: 1800-123-4567
					</p>
					<p class="small mb-1">
						<i class="fas fa-envelope me-2"></i> Email:
						helpdesk@maharashtra.gov.in
					</p>
					<p class="small mb-0">
						<i class="fas fa-clock me-2"></i> Mon-Sat: 9:00 AM - 6:00 PM
					</p>
				</div>
			</div>
			<hr class="bg-light my-3">
			<div class="row">
				<div class="col-12 text-center">
					<p class="small mb-0">
						© 2025 Civic Citizen HelpDesk. All Rights Reserved. | <a href="#"
							class="text-decoration-none text-light">Privacy Policy</a> | <a
							href="#" class="text-decoration-none text-light">Terms of Use</a>
						| <a href="#" class="text-decoration-none text-light">Accessibility
							Statement</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/Login.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
		crossorigin="anonymous">
	</script>
</body>
</html>