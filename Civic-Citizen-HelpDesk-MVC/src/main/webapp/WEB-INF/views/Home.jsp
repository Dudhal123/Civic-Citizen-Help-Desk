<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home | Civic Citizen HelpDesk</title>

  <!-- Favicon -->
  <link rel="shortcut icon" type="image/x-icon" href="assets/image/Helpdesk_Logo-removebg-preview.png">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>

<body>
  <!-- Top Header -->
  <nav class="navbar border-bottom top-header">
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
  <nav class="navbar bg-body-tertiary border-bottom p-0.1">
    <div class="container">
      <div class="Logo d-flex justify-content-between">
        <img src="assets/image/Helpdesk_Logo-removebg-preview.png" alt="HelpDesk Logo" width="80" height="80"
          class="d-inline-block align-text-top">
        <div class="d-inline-block d-flex flex-column justify-content-center">
          <p class="align-text-center ms-2 logo-text">Civic Citizen</p>
          <p class="align-text-center ms-2 logo-text">HelpDesk</p>
        </div>
      </div>
      <div class="d-flex align-items-center">
        <a href="login_page">
          <button class="btn btn-warning me-2 rounded-pill login-modal-btn" type="button">Login</button>
        </a>
        <a href="register_page">
          <button class="btn btn-warning me-2 rounded-pill login-modal-btn" type="button">Register</button>
        </a>
        <img src="assets/image/Ashok_Stamb-removebg-preview.png" alt="HelpDesk Logo" width="55" height="55"
          class="d-inline-block align-text-top ms-2 border-start ps-3">
      </div>
    </div>
  </nav>
  <!-- Main Header -->

  <!-- Main Content -->
  <div class="container-fluid mb-4 p-0 rounded shadow-sm">
    <!-- Carousel Start -->
    <div class="container-fluid p-0">
      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
            aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
            aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
            aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="assets/image/RoadProblem-Caurosol.jpg" class="d-block" alt="Road Problem" width="100%"
              height="500px">
            <div class="carousel-caption d-none d-md-block">
              <h5>Road Problem</h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="assets/image/broken-snapped-wooden-power-line-260nw-665812624.jpg" class="d-block"
              alt="Electricity Problem" width="100%" height="500px">
            <div class="carousel-caption d-none d-md-block">
              <h5>Electricity Problem</h5>
            </div>
          </div>
          <div class="carousel-item">
            <img src="assets/image/WaterProblem.png" class="d-block" alt="Water Problem" width="100%" height="500px">
            <div class="carousel-caption d-none d-md-block">
              <h5>Water Problem</h5>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
          data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
          data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    <!-- Carousel End -->
  </div>
  
  <!-- Footer -->
    <footer class="bg-dark text-light py-4 border-top mt-auto">
        <div class="container text-center">
            <div class="mb-2">
                <img src="assets/image/Helpdesk_Logo-removebg-preview.png" alt="HelpDesk Logo" width="60" class="mb-2">
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

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
      crossorigin="anonymous"></script>

</body>
</html>