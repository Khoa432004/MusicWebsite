<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/schema/spring-security"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.thymeleaf.org/schema/thymeleaf http://www.thymeleaf.org/schema/thymeleaf-spring5.xsd
                          http://www.thymeleaf.org/schema/spring-security http://www.thymeleaf.org/schema/spring-security.xsd">
                          
<head>
    <title>Register - R.K.S Studio</title>
    <link rel="stylesheet" href="assets/css/Register.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>
    <div class="register-container">
        <div class="register-box">
            <img src="assets/image/logo.jpg" alt="Logo" class="logo">
            <h2>Create Your Account</h2>
            <form th:action="@{/register}" method="post">
                <div class="input-group">
                    <i class="fa fa-user"></i>
                    <input type="text" name="username" placeholder="Your Username" required />
                </div>
                <div class="input-group">
                    <i class="fa fa-envelope"></i>
                    <input type="email" name="email" placeholder="Your Email" required />
                </div>
                <div class="input-group">
                    <i class="fa fa-lock"></i>
                    <input type="password" name="password" placeholder="Your Password" required />
                </div>
                <div class="input-group">
                    <i class="fa fa-lock"></i>
                    <input type="password" name="confirmPassword" placeholder="Confirm Password" required />
                </div>
                <button type="submit" class="register-btn">
                    <i class="fa fa-user-plus"></i> REGISTER
                </button>
                <div class="links">
                    <a href="Login.jsp">Already have an account? Login</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
