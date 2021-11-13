<%@ page contentType="text/html;charset=UTF-8"%>
<html lang="en">
<head>
	<title>DHS</title>
	<meta charset="UTF-8"/>
	<link rel="stylesheet" href="css/all.min.css"/>
	<link rel="stylesheet" href="Registration/style.css"/>
</head>
<body>
<!-- partial:index.partial.html -->
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form method="post" action="login">
			<input type="hidden" name="action" value="add">
			<h1>Đăng Ký</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>Hoặc tiếp tục bằng</span>
			<input type="email" placeholder="Email"/>
			<input type="password" placeholder="Mật Khẩu"/>
<%--			<div  class="form-control">--%>
				<button type="submit" class="btn-submit">Đăng Ký</button>
<%--				<c:if test="${not empty message}">--%>
<%--					<script>--%>
<%--					window.addEventListener("load",function(){--%>
<%--					alert("${message}");--%>
<%--					})--%>
<%--					</script>--%>
<%--			</div>--%>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form method="post" action="login">
			<input type="hidden" name="action" value="signin">
			<h1>Đăng Nhập</h1>
			<div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div>
			<span>Hoặc tiếp tục bằng</span>
			<input type="email" placeholder="Email"/>
			<input type="password" placeholder="Mật khẩu"/>
			<a href="#">Quên mật khẩu ?</a>
			<div class="form-control">
			<button type="submit" class="btn-submit">Đăng Nhập</button>
<%--			<c:if test="${not empty message}">--%>
<%--				<script>--%>
<%--				window.addEventListener("load",function(){--%>
<%--				alert("${message}");--%>
<%--				})--%>
<%--				</script>--%>
			</div>
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
