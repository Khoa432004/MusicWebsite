<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/schema/spring-security"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:schemaLocation="http://www.thymeleaf.org/schema/thymeleaf http://www.thymeleaf.org/schema/thymeleaf-spring5.xsd
                          http://www.thymeleaf.org/schema/spring-security http://www.thymeleaf.org/schema/spring-security.xsd">
                          
<head>
    <title>Login - R.K.S Studio</title>
    <link rel="stylesheet" href="assets/css/Login.css" />
</head>
<body>
    <div class="login-container">
        <div class="login-box">
            <img src="assets/image/logo.jpg" alt="Logo" class="logo">
            <h2>Welcome To Musics.</h2>
            <form th:action="@{/login}" method="post">
                <div class="input-group">
                    <i class="fa fa-envelope"></i>
                    <input type="email" name="email" placeholder="Your Email" required />
                </div>
                <div class="input-group">
                    <i class="fa fa-lock"></i>
                    <input type="password" name="password" placeholder="Your Password" required />
                </div>
                <button type="submit" class="login-btn">
                    <i class="fa fa-paper-plane"></i> LOGIN
                </button>
                <div class="links">
                    <a href="Register.jsp">Create Account</a>
                    <a href="#">Forget Password?</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>

