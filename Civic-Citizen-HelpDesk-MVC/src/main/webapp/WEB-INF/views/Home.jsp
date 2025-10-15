<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home | Civic Citizen HelpDesk</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="assets/image/Helpdesk_Logo-removebg-preview.png">

  <!-- Bootstrap & Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  
  <style>
    :root {
      --primary-blue: #01284F;
      --secondary-blue: #02386F;
      --accent-yellow: #FFC107;
      --light-bg: #F8F9FA;
    }
    
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: var(--light-bg);
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
    
    .login-modal-btn {
      border-color: none !important;
      padding: 0.5rem 1.2rem !important;
      font-size: 1rem !important;
      font-weight: 600 !important;
    }
    
    /* Hero Section Styles */
    .hero-section {
      background: linear-gradient(135deg, var(--primary-blue) 0%, var(--secondary-blue) 100%);
      color: white;
      padding: 4rem 0;
      position: relative;
      overflow: hidden;
    }
    
    .hero-section::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="%23000" fill-opacity="0.1" d="M0,224L48,213.3C96,203,192,181,288,181.3C384,181,480,203,576,202.7C672,203,768,181,864,170.7C960,160,1056,160,1152,170.7C1248,181,1344,203,1392,213.3L1440,224L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z"></path></svg>');
      background-size: cover;
      background-position: bottom;
      opacity: 0.1;
    }
    
    .hero-content {
      position: relative;
      z-index: 1;
    }
    
    .hero-title {
      font-size: 3rem;
      font-weight: 700;
      margin-bottom: 1.5rem;
    }
    
    .hero-subtitle {
      font-size: 1.2rem;
      margin-bottom: 2rem;
      opacity: 0.9;
    }
    
    .hero-stats {
      display: flex;
      gap: 2rem;
      margin-top: 2rem;
    }
    
    .hero-stat {
      text-align: center;
    }
    
    .hero-stat-number {
      font-size: 2rem;
      font-weight: 700;
      margin-bottom: 0.5rem;
    }
    
    .hero-stat-label {
      font-size: 0.9rem;
      opacity: 0.8;
    }
    
    .hero-image {
      position: relative;
      z-index: 1;
    }
    
    .feature-card {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      border-radius: 10px;
      padding: 1.5rem;
      margin-bottom: 1.5rem;
      border: 1px solid rgba(255, 255, 255, 0.2);
      transition: transform 0.3s ease;
    }
    
    .feature-card:hover {
      transform: translateY(-5px);
    }
    
    .feature-icon {
      font-size: 2rem;
      margin-bottom: 1rem;
      color: var(--accent-yellow);
    }
    
    .quick-report-card {
      background: white;
      border-radius: 10px;
      padding: 1.5rem;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    }
    
    .report-option {
      display: flex;
      align-items: center;
      padding: 1rem;
      border-radius: 8px;
      margin-bottom: 0.8rem;
      cursor: pointer;
      transition: all 0.3s ease;
      border: 1px solid #e9ecef;
    }
    
    .report-option:hover {
      background-color: #f8f9fa;
      border-color: var(--accent-yellow);
    }
    
    .report-option i {
      font-size: 1.5rem;
      margin-right: 1rem;
      color: var(--primary-blue);
    }
    
    .service-card {
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      border: none;
      border-radius: 10px;
      overflow: hidden;
    }
    
    .service-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 10px 20px rgba(0,0,0,0.1) !important;
    }
    
    .service-icon {
      font-size: 2.5rem;
      margin-bottom: 1rem;
      color: var(--primary-blue);
    }
    
    .stats-counter {
      font-size: 2.5rem;
      font-weight: 700;
      color: var(--primary-blue);
    }
    
    .emergency-card {
      background: linear-gradient(45deg, #fff3cd, #ffecb5);
      border: none;
      border-radius: 10px;
    }
    
    .update-card {
      border: none;
      border-radius: 10px;
      transition: transform 0.3s ease;
    }
    
    .update-card:hover {
      transform: translateY(-3px);
    }
    
    .testimonial-card {
      border: none;
      border-radius: 10px;
      border-left: 4px solid var(--primary-blue);
    }
    
    .quick-action-btn {
      border-radius: 50px;
      padding: 0.5rem 1.5rem;
      font-weight: 600;
    }
    
    .feature-icon-circle {
      width: 70px;
      height: 70px;
      background-color: rgba(1, 40, 79, 0.1);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 1rem;
    }
    
    @media (max-width: 768px) {
      .logo-text {
        font-size: 1.2rem;
      }
      
      .hero-title {
        font-size: 2rem;
      }
      
      .hero-subtitle {
        font-size: 1rem;
      }
      
      .stats-counter {
        font-size: 2rem;
      }
      
      .hero-stats {
        flex-direction: column;
        gap: 1rem;
      }
    }
  </style>
</head>

<body>
  <!-- Top Header -->
  <nav class="navbar border-bottom top-header py-1">
    <div class="container">
      <div class="Logo d-flex justify-content-center align-items-center">
        <img src="assets/image/Seal_of_Maharashtra-removebg-preview.png" alt="Maharashtra Logo" width="30" height="30"
          class="d-inline-block align-text-top">
        <p class="navbar nav-logo d-inline-block align-text-center mb-0 text-light">Government of Maharashtra</p>
      </div>
      <div class="d-flex">
        <a href="#" class="btn align-text-top mb-0 format-btn">A<sup>+</sup></a>
        <a href="#" class="btn align-text-top mb-0 format-btn">A<sup>=</sup></a>
        <a href="#" class="btn align-text-top mb-0 format-btn">A<sup>-</sup></a>
        <select name="language-switcher" id="language-switcher"
          class="format-btn form-select align-text-top language-switcher">
          <option value="en" selected>English </option>
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
        <img src="assets/image/Helpdesk_Logo-removebg-preview.png" alt="HelpDesk Logo" width="80" height="80"
          class="d-inline-block align-text-top">
        <div class="d-inline-block d-flex flex-column justify-content-center">
          <p class="align-text-center ms-2 logo-text text-primary">Civic Citizen</p>
          <p class="align-text-center ms-2 logo-text text-primary">HelpDesk</p>
        </div>
      </div>
      <div class="d-flex align-items-center">
        <a href="complaint_tracking" class="btn btn-outline-primary quick-action-btn me-2 d-none d-md-block">
          <i class="fas fa-search me-1"></i> Track Complaint
        </a>
        <a href="faq" class="btn btn-outline-primary quick-action-btn me-2 d-none d-md-block">
          <i class="fas fa-question-circle me-1"></i> FAQ
        </a>
        <a href="login_page">
          <button class="btn btn-warning me-2 quick-action-btn" type="button">
            <i class="fas fa-sign-in-alt me-1"></i> Login
          </button>
        </a>
        <a href="register_page">
          <button class="btn btn-warning me-2 quick-action-btn" type="button">
            <i class="fas fa-user-plus me-1"></i> Register
          </button>
        </a>
        <img src="assets/image/Ashok_Stamb-removebg-preview.png" alt="HelpDesk Logo" width="55" height="55"
          class="d-inline-block align-text-top ms-2 border-start ps-3 d-none d-md-block">
      </div>
    </div>
  </nav>
  <!-- Main Header -->

  <!-- Hero Section (Replacing Carousel) -->
  <section class="hero-section">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 hero-content">
          <h1 class="hero-title">Your Voice Matters</h1>
          <p class="hero-subtitle">Report civic issues, track resolutions, and contribute to a better Maharashtra. Our platform connects citizens directly with government departments for quick problem-solving.</p>
          
          <div class="d-flex flex-wrap gap-3 mb-4">
            <a href="file_complaint" class="btn btn-warning btn-lg quick-action-btn">
              <i class="fas fa-edit me-2"></i> File a Complaint
            </a>
            <a href="services" class="btn btn-outline-light btn-lg quick-action-btn">
              <i class="fas fa-concierge-bell me-2"></i> Browse Services
            </a>
          </div>
          
          <div class="hero-stats">
            <div class="hero-stat">
              <div class="hero-stat-number">1,25,647</div>
              <div class="hero-stat-label">Issues Resolved</div>
            </div>
            <div class="hero-stat">
              <div class="hero-stat-number">24H</div>
              <div class="hero-stat-label">Avg. Response Time</div>
            </div>
            <div class="hero-stat">
              <div class="hero-stat-number">94%</div>
              <div class="hero-stat-label">Satisfaction Rate</div>
            </div>
          </div>
        </div>
        
        <div class="col-lg-6 hero-image">
          <div class="quick-report-card">
            <h4 class="mb-4 text-primary">Quick Report</h4>
            
            <div class="report-option" onclick="location.href='road_issues'">
              <i class="fas fa-road"></i>
              <div>
                <h6 class="mb-1 text-dark">Road & Infrastructure</h6>
                <p class="mb-0 small text-muted">Potholes, damaged roads, traffic signals</p>
              </div>
            </div>
            
            <div class="report-option" onclick="location.href='water_issues'">
              <i class="fas fa-tint"></i>
              <div>
                <h6 class="mb-1 text-dark">Water Supply</h6>
                <p class="mb-0 small text-muted">Water quality, pipeline leaks, supply issues</p>
              </div>
            </div>
            
            <div class="report-option" onclick="location.href='electricity_issues'">
              <i class="fas fa-bolt"></i>
              <div>
                <h6 class="mb-1 text-dark">Electricity</h6>
                <p class="mb-0 small text-muted">Power outages, street lights, wiring problems</p>
              </div>
            </div>
            
            <div class="report-option" onclick="location.href='waste_issues'">
              <i class="fas fa-trash"></i>
              <div>
                <h6 class="mb-1 text-dark">Waste Management</h6>
                <p class="mb-0 small text-muted">Garbage collection, sanitation, recycling</p>
              </div>
            </div>
            
            <div class="text-center mt-3">
              <a href="all_services" class="btn btn-outline-primary btn-sm">View All Services</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Features Section -->
  <section class="py-5 bg-white">
    <div class="container">
      <div class="row text-center mb-5">
        <div class="col-12">
          <h2 class="text-primary">How It Works</h2>
          <p class="text-muted">Simple steps to get your civic issues resolved</p>
        </div>
      </div>
      
      <div class="row">
        <div class="col-md-4 mb-4">
          <div class="feature-icon-circle">
            <i class="fas fa-edit text-primary" style="font-size: 1.8rem;"></i>
          </div>
          <h4 class="text-center mb-3">Report Issue</h4>
          <p class="text-center text-muted">Describe your civic issue with details and location. You can also upload photos for better understanding.</p>
        </div>
        
        <div class="col-md-4 mb-4">
          <div class="feature-icon-circle">
            <i class="fas fa-tasks text-primary" style="font-size: 1.8rem;"></i>
          </div>
          <h4 class="text-center mb-3">Track Progress</h4>
          <p class="text-center text-muted">Monitor the status of your complaint in real-time. Get notifications at each step of the resolution process.</p>
        </div>
        
        <div class="col-md-4 mb-4">
          <div class="feature-icon-circle">
            <i class="fas fa-check-circle text-primary" style="font-size: 1.8rem;"></i>
          </div>
          <h4 class="text-center mb-3">Issue Resolved</h4>
          <p class="text-center text-muted">Receive confirmation when your issue is resolved. Provide feedback to help us improve our services.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Service Categories -->
  <div class="container mt-5">
    <div class="row text-center mb-4">
      <h2 class="text-primary">Report Common Issues</h2>
      <p class="text-light">Select a category to file your complaint</p>
    </div>
    <div class="row g-4">
      <div class="col-md-2 col-4">
        <a href="road_issues" class="text-decoration-none">
          <div class="card service-card shadow-sm text-center h-100">
            <div class="card-body py-4">
              <i class="fas fa-road text-warning mb-3" style="font-size: 2rem;"></i>
              <h6 class="card-title">Road Problems</h6>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-2 col-4">
        <a href="electricity_issues" class="text-decoration-none">
          <div class="card service-card shadow-sm text-center h-100">
            <div class="card-body py-4">
              <i class="fas fa-bolt text-warning mb-3" style="font-size: 2rem;"></i>
              <h6 class="card-title">Electricity</h6>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-2 col-4">
        <a href="water_issues" class="text-decoration-none">
          <div class="card service-card shadow-sm text-center h-100">
            <div class="card-body py-4">
              <i class="fas fa-tint text-warning mb-3" style="font-size: 2rem;"></i>
              <h6 class="card-title">Water Supply</h6>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-2 col-4">
        <a href="waste_issues" class="text-decoration-none">
          <div class="card service-card shadow-sm text-center h-100">
            <div class="card-body py-4">
              <i class="fas fa-trash text-warning mb-3" style="font-size: 2rem;"></i>
              <h6 class="card-title">Waste Management</h6>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-2 col-4">
        <a href="drainage_issues" class="text-decoration-none">
          <div class="card service-card shadow-sm text-center h-100">
            <div class="card-body py-4">
              <i class="fas fa-water text-warning mb-3" style="font-size: 2rem;"></i>
              <h6 class="card-title">Drainage</h6>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-2 col-4">
        <a href="other_issues" class="text-decoration-none">
          <div class="card service-card shadow-sm text-center h-100">
            <div class="card-body py-4">
              <i class="fas fa-ellipsis-h text-warning mb-3" style="font-size: 2rem;"></i>
              <h6 class="card-title">Other Issues</h6>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
  
  <!-- Statistics Section -->
  <div class="container-fluid bg-light py-5 mt-5">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-3 col-6 mb-4">
          <div class="stats-counter" id="complaintsCount">1,25,647</div>
          <p class="text-muted">Complaints Resolved</p>
        </div>
        <div class="col-md-3 col-6 mb-4">
          <div class="stats-counter" id="citiesCount">56</div>
          <p class="text-muted">Cities Covered</p>
        </div>
        <div class="col-md-3 col-6 mb-4">
          <div class="stats-counter" id="responseTime">24H</div>
          <p class="text-muted">Average Response Time</p>
        </div>
        <div class="col-md-3 col-6 mb-4">
          <div class="stats-counter" id="satisfactionRate">94%</div>
          <p class="text-muted">Citizen Satisfaction</p>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Emergency Contact Section -->
  <div class="container mt-5">
    <div class="row">
      <div class="col-12">
        <div class="card emergency-card shadow-sm">
          <div class="card-body py-4">
            <div class="d-flex flex-column flex-md-row align-items-center">
              <div class="d-flex align-items-center mb-3 mb-md-0">
                <i class="fas fa-exclamation-triangle fa-2x text-danger me-3"></i>
                <div>
                  <h4 class="card-title mb-1">Emergency Contacts</h4>
                  <p class="card-text mb-0">For urgent issues requiring immediate attention</p>
                </div>
              </div>
              <div class="ms-md-auto">
                <button class="btn btn-danger quick-action-btn">
                  <i class="fas fa-phone-alt me-1"></i> View Emergency Numbers
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Updates Section -->
  <div class="container mt-5">
    <div class="row">
      <div class="col-12">
        <div class="d-flex justify-content-between align-items-center mb-4">
          <h3 class="text-primary">Latest Updates</h3>
          <a href="#" class="btn btn-outline-primary quick-action-btn">View All</a>
        </div>
        <div class="row">
          <div class="col-md-4 mb-4">
            <div class="card update-card shadow-sm h-100">
              <div class="card-body">
                <span class="badge bg-warning text-dark mb-2">Update</span>
                <h5 class="card-title">New Grievance Portal Launch</h5>
                <p class="card-text text-muted">Enhanced features for better citizen experience with real-time tracking and SMS alerts.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">Posted on: 15 Jan 2025</small>
                  <a href="#" class="btn btn-sm btn-outline-primary">Read More</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="card update-card shadow-sm h-100">
              <div class="card-body">
                <span class="badge bg-success text-white mb-2">Notice</span>
                <h5 class="card-title">Maintenance Schedule</h5>
                <p class="card-text text-muted">Scheduled maintenance on 20th January. Portal may be unavailable from 2 AM to 4 AM.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">Posted on: 12 Jan 2025</small>
                  <a href="#" class="btn btn-sm btn-outline-primary">Read More</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 mb-4">
            <div class="card update-card shadow-sm h-100">
              <div class="card-body">
                <span class="badge bg-info text-white mb-2">Achievement</span>
                <h5 class="card-title">1 Lakh+ Complaints Resolved</h5>
                <p class="card-text text-muted">Milestone achieved in public service delivery with 94% citizen satisfaction rate.</p>
                <div class="d-flex justify-content-between align-items-center">
                  <small class="text-muted">Posted on: 10 Jan 2025</small>
                  <a href="#" class="btn btn-sm btn-outline-primary">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Testimonials Section -->
  <div class="container-fluid bg-light py-5 mt-5">
    <div class="container">
      <h3 class="text-primary text-center mb-4">What Citizens Say</h3>
      <div class="row">
        <div class="col-md-4 mb-4">
          <div class="card testimonial-card shadow-sm h-100">
            <div class="card-body">
              <div class="text-warning mb-3">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <p class="card-text fst-italic">"My road repair complaint was resolved within 2 days. The tracking feature kept me updated throughout the process. Excellent service!"</p>
              <div class="d-flex align-items-center mt-3">
                <div class="flex-shrink-0">
                  <i class="fas fa-user-circle fa-2x text-primary"></i>
                </div>
                <div class="flex-grow-1 ms-3">
                  <h6 class="mb-0">Rajesh Kumar</h6>
                  <small class="text-muted">Pune</small>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-4">
          <div class="card testimonial-card shadow-sm h-100">
            <div class="card-body">
              <div class="text-warning mb-3">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
              </div>
              <p class="card-text fst-italic">"The water supply issue in our area was fixed promptly after I filed a complaint. The officials even called to confirm the resolution. Great initiative!"</p>
              <div class="d-flex align-items-center mt-3">
                <div class="flex-shrink-0">
                  <i class="fas fa-user-circle fa-2x text-primary"></i>
                </div>
                <div class="flex-grow-1 ms-3">
                  <h6 class="mb-0">Priya Sharma</h6>
                  <small class="text-muted">Nagpur</small>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 mb-4">
          <div class="card testimonial-card shadow-sm h-100">
            <div class="card-body">
              <div class="text-warning mb-3">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
              </div>
              <p class="card-text fst-italic">"I reported a street light outage in my locality, and it was fixed within 24 hours. The portal is user-friendly and the process is transparent."</p>
              <div class="d-flex align-items-center mt-3">
                <div class="flex-shrink-0">
                  <i class="fas fa-user-circle fa-2x text-primary"></i>
                </div>
                <div class="flex-grow-1 ms-3">
                  <h6 class="mb-0">Amit Patil</h6>
                  <small class="text-muted">Mumbai</small>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Footer -->
  <footer class="bg-dark text-light py-4 border-top mt-auto">
    <div class="container">
      <div class="row">
        <div class="col-md-4 text-center text-md-start mb-3 mb-md-0">
          <img src="assets/image/Helpdesk_Logo-removebg-preview.png" alt="HelpDesk Logo" width="60" class="mb-2">
          <h5 class="mb-1">Civic Citizen HelpDesk</h5>
          <p class="small mb-0">An Initiative by Government of Maharashtra</p>
        </div>
        <div class="col-md-4 text-center mb-3 mb-md-0">
          <h6>Quick Links</h6>
          <div class="d-flex flex-column">
            <a href="#" class="text-light text-decoration-none small py-1">Home</a>
            <a href="#" class="text-light text-decoration-none small py-1">Services</a>
            <a href="#" class="text-light text-decoration-none small py-1">Track Complaint</a>
            <a href="#" class="text-light text-decoration-none small py-1">Contact Us</a>
          </div>
        </div>
        <div class="col-md-4 text-center text-md-end">
          <h6>Contact Information</h6>
          <p class="small mb-1"><i class="fas fa-phone-alt me-2"></i> Helpline: 1800-123-4567</p>
          <p class="small mb-1"><i class="fas fa-envelope me-2"></i> Email: helpdesk@maharashtra.gov.in</p>
          <p class="small mb-0"><i class="fas fa-clock me-2"></i> Mon-Sat: 9:00 AM - 6:00 PM</p>
        </div>
      </div>
      <hr class="bg-light my-3">
      <div class="row">
        <div class="col-12 text-center">
          <p class="small mb-0">
            © 2025 Civic Citizen HelpDesk. All Rights Reserved. |
            <a href="#" class="text-decoration-none text-light">Privacy Policy</a> |
            <a href="#" class="text-decoration-none text-light">Terms of Use</a> |
            <a href="#" class="text-decoration-none text-light">Accessibility Statement</a>
          </p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
    crossorigin="anonymous"></script>
    
  <script>
    // Simple counter animation for statistics
    document.addEventListener('DOMContentLoaded', function() {
      const counters = document.querySelectorAll('.stats-counter');
      const speed = 200;
      
      counters.forEach(counter => {
        const target = parseInt(counter.innerText.replace(/[^0-9]/g, ''));
        let count = 0;
        
        // For percentage values
        if(counter.id === 'satisfactionRate') {
          const increment = target / speed;
          const updateCount = () => {
            count += increment;
            if(count < target) {
              counter.innerText = Math.ceil(count) + '%';
              setTimeout(updateCount, 10);
            } else {
              counter.innerText = target + '%';
            }
          };
          updateCount();
        } 
        // For time values
        else if(counter.id === 'responseTime') {
          counter.innerText = target + 'H';
        }
        // For number values
        else {
          const increment = target / speed;
          const updateCount = () => {
            count += increment;
            if(count < target) {
              counter.innerText = Math.ceil(count).toLocaleString();
              setTimeout(updateCount, 10);
            } else {
              counter.innerText = target.toLocaleString();
            }
          };
          updateCount();
        }
      });
    });
  </script>
</body>
</html>