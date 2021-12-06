<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <title>DHS</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="css/all.min.css"/>
    <link rel="stylesheet" href="Registration/style.css"/>

    <!-- Logo -->
    <link rel="shortcut icon"
          type="image/x-icon"
          href="assets/img/logo/favicon.ico">
</head>
<body>
<!-- partial:index.partial.html -->
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form id="singup" method="post" action="login">
            <input type="hidden" name="action" value="add">
            <h1>Đăng Ký</h1>
            <input type="email" name="email" placeholder="Email"/>
            <input type="password" minlength="6" name="password" placeholder="Mật Khẩu"/>
            <input type="password" min="6" name="confirmpassword" placeholder="Xác Nhận Mật Khẩu"/>
            <button type="submit" class=" btn1 btn-submit">Đăng Ký</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form method="post" action="login">
            <input type="hidden" name="action" value="signin">
            <h1>Đăng Nhập</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/WebThuongMaiDienTu_war_exploded/login-google&response_type=code
   				 &client_id=579923879861-606p232mfsvpib1kan7o9d5fq8b93g07.apps.googleusercontent.com&approval_prompt=force"
                   class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>Hoặc tiếp tục bằng</span>
            <input type="email" name="email" placeholder="Email"/>
            <input type="password" minlength="6" name="password" placeholder="Mật khẩu"/>
            <a href="reset_password">Quên mật khẩu ?</a>
            <button type="submit" id="btn2" class="btn2 btn-submit">Đăng Nhập</button>
            <c:if test="${not empty message}">
                <script>
                    window.addEventListener("load", function () {
                        alert("${message}");
                    })
                </script>
            </c:if>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Xin chào !</h1>
                <p>Đăng nhập để nhận ưu đãi mỗi ngày</p>
                <button class="ghost" id="signIn">Đăng Nhập</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Mua sắm tại DHS</h1>
                <p>Siêu ưu đãi mỗi ngày</p>
                <button class="ghost" id="signUp">Đăng Ký Ngay</button>
            </div>
        </div>
    </div>
</div>

<!-- partial -->
<script src="Registration/script.js"></script>
</body>
</html>
