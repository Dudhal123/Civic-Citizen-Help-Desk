
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