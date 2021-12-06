<%--@elvariable id="account" type="Model.Account"--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DHS</title>

    <!-- Logo -->
    <link rel="shortcut icon"
          type="image/x-icon"
          href="assets/img/logo/favicon.ico">

    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/pages/search.css">
    <link rel="stylesheet" href="assets/css/core.css">
    <link rel="stylesheet" href="assets/css/shortcode/shortcodes.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome/css/all.min.css">

    <!-- Script -->
    <script src="assets/js/jquery-3.3.1.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
<header class="header">
    <div class="grid wide">
        <!-- header navbar -->
        <nav class="header__navbar hide-on-mobile-tablet">
            <!-- header navbar left -->
            <ul class="header__navbar-list">
                <li>
                    <i class="header__navbar-icon fas fa-store"></i>
                    <a class="header__navbar-item"
                       href="${pageContext.request.contextPath}/account">Kênh người bán</a>
                </li>
            </ul>
            <!--rnd header navbar left -->

            <!-- header navbar right -->
            <ul class="header__navbar-list">
                <% session = request.getSession(false);
                    if (session == null || session.getAttribute("loggedInUser") == null) {%>
                <!-- Chưa đăng nhập -->
                <li>
                    <a href="login" class="
									header__navbar-item
									header__navbar-item--strong
									header__navbar-item--separate"
                    > Đăng ký</a>
                </li>
                <li>
                    <a href="login" class="
									header__navbar-item
									header__navbar-item--strong"
                    > Đăng Nhập</a>
                </li>
                <%} else {%>
                <!-- Đã đăng nhập -->
                <li class="header__navbar-item header__navbar-user">
                    <img src="${pageContext.request.contextPath}/images/${account.avatar}"
                         class="header__navbar-user-img" alt="">
                    <% if (session.getAttribute("username") == null || session.getAttribute("loggedInUser") == null) {%>
                    <span class="header__navbar-item--strong header__navbar-user-name">
                            User name</span>
                    <%} else { %>
                    <span>${account.username}</span>
                    <%}%>
                    <ul class="header__navbar-user-menu">
                        <li class="header__navbar-user-item">
                            <a rel="nofollow"
                               href="${pageContext.request.contextPath}/customer"
                            >Tài khoản của tôi</a>
                        </li>
                        <li class="header__navbar-user-item">
                            <a rel="nofollow"
                               href="${pageContext.request.contextPath}/customerorder"
                            >Đơn mua</a>
                        </li>
                        <li class="header__navbar-user-item header__navbar-user-item--separate">
                            <a rel="nofollow"
                               href="${pageContext.request.contextPath}/logout"
                            >Đăng xuất</a>
                        </li>
                    </ul>
                </li>
                <%}%>
            </ul>
        </nav>

        <!-- Header with Search -->
        <div class="header-with-search">
            <!-- Header Logo -->
            <div class="header__logo">
                <a href="home" class="header__logo-link">
                    <img class="header__logo-img" src="assets/img/logo/logo.svg" alt=""/>
                </a>
            </div>

            <!-- Header Search -->
            <form style="width: 800px" action="search" method="get">
                <div class="header__search">
                    <div class="header__search-input-wrap">

                        <input type="text" name="searchproduct" class="header__search-input"
                               placeholder="Nhập để tìm kiếm sản phẩm"/>
                    </div>
                    <button type="submit" class="btn submit header__search-btn">
                        <i class="header__search-btn-icon fas fa-search"></i>
                    </button>

                </div>
            </form>


            <!-- Cart layout -->
            <div class="header__cart">
                <div class="header__cart-wrap">
                    <span class="header__cart-notice">0</span>
                    <a href="${pageContext.request.contextPath}/cart" rel="nofollow">
                        <i class="header__cart-icon fas fa-shopping-cart"></i>
                    </a>
                </div>
                <!--End cart -->
            </div>
            <!--End header-search -->
        </div>
    </div>
</header>

<c:if test="${not empty ListProductByproductname}">
    <div class="body1">
        <h1 class="titleNotfound">Kết quả tìm kiếm của <%=request.getParameter("searchproduct")%>
        </h1>
        <center>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Mô tả</th>
                    <th>Tên shop</th>
                </tr>
                <c:forEach items="${ListProductByproductname}" var="elements">
                    <tr>
                        <td>${elements[4]}</td>
                        <td>${elements[0]}</td>
                        <td>${elements[2]}</td>
                        <td>${elements[1]}</td>
                        <td>${elements[3]}</td>
                    </tr>
                </c:forEach>
            </table>
        </center>
    </div>
</c:if>
<c:if test="${empty ListProductByproductname}">
    <div class="body1">
        <h1 class="titleNotfound">Không tìm thấy kết quả nào cho <%=request.getParameter("searchproduct")%>
        </h1>
        <img class="notfound-img" src="assets/img/404.png" alt=""/>
    </div>
</c:if>

<datalist id="listproduct">
    <option value=""></option>
</datalist>

<!-- Footer -->
<footer class="footer">
    <div class="grid wide">
        <div class="grid__row">
            <div class="col l-2-4 m-4 c-6">
                <h3 class="footer__heading">Chăm sóc khách hàng</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Trung Tâm Trợ Giúp</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Thanh Toán</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Vận Chuyển</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Trả hàng & Hoàn Tiền</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Chăm Sóc Khách Hàng</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Chính Sách Bảo Hành</a>
                    </li>
                </ul>
            </div>
            <div class="col l-2-4 m-4 c-6">
                <h3 class="footer__heading">Về DHS</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Về chúng tôi</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Liên hệ</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Điều khoản DHS</a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Kênh Người Bán</a>
                    </li>
                </ul>
            </div>
            <div class="col l-2-4 m-4 c-6">
                <h3 class="footer__heading">Kết nối với chúng tôi</h3>
                <ul class="footer-list">
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">
                            <i class="fab fa-facebook footer-item__icon"></i>
                            Facebook
                        </a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">
                            <i class="fab fa-instagram footer-item__icon"></i>
                            Instagram
                        </a>
                    </li>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">
                            <i class="fab fa-linkedin footer-item__icon"></i>
                            Linkedin</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer__bottom">
        <div class="grid wide">
            <p class="footer__text">@2021 - Bản quyền thuộc về Nhóm 3 - Designed by Nguyễn Thanh Minh Đức</p>
        </div>
    </div>
</footer>
<!--End footer -->
</body>
</html>
