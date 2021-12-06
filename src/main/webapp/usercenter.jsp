<%@ page import="java.nio.file.Paths" %><%--@elvariable id="account" type="com.sun.webkit.dom.HTMLAreaElementImpl"--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="assets/css/pages/usercenter.css">
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
<div class="app">
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
                                   href="${pageContext.request.contextPath}/changingpassword"
                                >Đổi mật khẩu</a>
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
                    <input type="hidden" name="action" value="searchproduct">
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
    <!--End header -->

    <!--User center -->
    <div class="app__container">
        <div class="grid wide">
            <div class="row1 sm-gutter1 app__content">
                <!-- Danh mục -->
                <div class="col1 l-2 m-0 c-0">
                    <nav class="menu">
                        <h3 class="menu__heading">
                            <i class="fas fa-list-ul menu__heading-icon"></i>
                            Danh mục
                        </h3>
                        <ul class="menu-list">
                            <li class="menu-item catgory-item--active">
                                <a href="customer" class="menu-item__link">
                                    <i class="fas fa-users menu__item-icon"></i>
                                    Thông tin tài khoản</a>
                            </li>
                            <li class="menu-item catgory-item--active">
                                <a href="changingpassword" class="menu-item__link">
                                    <i class="fas fa-key menu__item-icon"></i>
                                    Đổi mật khẩu</a>
                            </li>
                            <li class="menu-item catgory-item--active">
                                <a href="addresslist" class="menu-item__link">
                                    <i class="fas fa-map-marked menu__item-icon"></i>
                                    Sổ địa chỉ</a>
                            </li>
                            <li class="menu-item catgory-item--active">
                                <a href="customerReview" class="menu-item__link">
                                    <i class="far fa-address-card menu__item-icon"></i>
                                    Nhận xét của khách hàng</a>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="col1 l-10 m-12 c-12">
                    <!-- Tiêu đề -->
                    <div class="breadcrump-filter">
                        <span class="breadcrump-filter__label">Thông Tin Cá Nhân</span>
                    </div>

                    <!-- Nội dung -->
                    <div class="home">
                        <div class="row1 sm-gutter1">
                            <form  method="post" style="display:inline-grid; margin-left: 5px; width: 100%;">
                                <input type="hidden" name="action" value="add">
                                <div class="form-control">
                                    <label class="home-item__name">Họ tên</label>
                                    <div>
                                        <input type="text" name="fullName" maxlength="128" class="Input-styles"
                                               value="${account.username}">
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="home-item__name">Mật khẩu</label>
                                    <div>
                                        <input type="password" name="password" disabled maxlength="128"
                                               minlength="6" class="Input-styles" value="${account.passwordHash}">
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="home-item__name">Số điện thoại</label>
                                    <div>
                                        <input type="tel" pattern="(84|0[3|5|7|8|9])+([0-9]{8})\b"
                                               name="phoneNumber" required class="Input-styles"
                                               value="${account.phone} ">
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="home-item__name">Email</label>
                                    <div>
                                        <input type="email" name="email" disabled required class="Input-styles"
                                               value="${account.email}">
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="home-item__name">Giới tính</label>
                                    <label style="margin-left: 350px" class="Radio_StylesRadio">
                                        <input type="radio" name="gender" value="male" checked>
                                        <span class="radio-fake"></span>
                                        <span class="radio-label">Nam</span>
                                    </label>
                                    <label style="margin-left: 60px" class="Radio_StylesRadio">
                                        <input type="radio" name="gender" value="female">
                                        <span class="radio-label">Nữ</span>
                                    </label>
                                    <label style="margin-left: 60px" class="Radio_StylesRadio">
                                        <input type="radio" name="gender" value="female">
                                        <span class="radio-label">Khác</span>
                                    </label>
                                </div>
                                <div class="form-control">
                                    <label class="home-item__name">
                                        <p>Ngày sinh</p>
                                    </label>
                                    <div class="styles_StylesBirthdayPicker">
                                        <select style="margin-left: 150px;" id="day" class="selectday" name="day" required>
                                            <option class="day1" value="0" selected>Ngày</option>
                                            <option class="day1" value="1">1</option>
                                            <option class="day1" value="2">2</option>
                                            <option class="day1" value="3">3</option>
                                            <option class="day1" value="4">4</option>
                                            <option class="day1" value="5">5</option>
                                            <option class="day1" value="6">6</option>
                                            <option class="day1" value="7">7</option>
                                            <option class="day1" value="8">8</option>
                                            <option class="day1" value="9">9</option>
                                            <option class="day1" value="10">10</option>
                                            <option class="day1" value="11">11</option>
                                            <option class="day1" value="12">12</option>
                                            <option class="day1" value="13">13</option>
                                            <option class="day1" value="14">14</option>
                                            <option class="day1" value="15">15</option>
                                            <option class="day1" value="16">16</option>
                                            <option class="day1" value="17">17</option>
                                            <option class="day1" value="18">18</option>
                                            <option class="day1" value="19">19</option>
                                            <option class="day1" value="20">20</option>
                                            <option class="day1" value="21">21</option>
                                            <option class="day1" value="22">22</option>
                                            <option class="day1" value="23">23</option>
                                            <option class="day1" value="24">24</option>
                                            <option class="day1" value="25">25</option>
                                            <option class="day1" value="26">26</option>
                                            <option class="day1" value="27">27</option>
                                            <option class="day1" value="28">28</option>
                                            <option class="day1" value="29">29</option>
                                            <option class="day1" value="30">30</option>
                                            <option class="day1" value="31">31</option>
                                        </select>
                                        <select class="selectmonth" name="month" required>
                                            <option name="month1" value="" selected>Tháng</option>
                                            <option name="month1" value="1">1</option>
                                            <option name="month1" value="2">2</option>
                                            <option name="month1" value="3">3</option>
                                            <option name="month1" value="4">4</option>
                                            <option name="month1" value="5">5</option>
                                            <option name="month1" value="6">6</option>
                                            <option name="month1" value="7">7</option>
                                            <option name="month1" value="8">8</option>
                                            <option name="month1" value="9">9</option>
                                            <option name="month1" value="10">10</option>
                                            <option name="month1" value="11">11</option>
                                            <option name="month1" value="12">12</option>
                                        </select>
                                        <select class="selectyear" name="year" required>
                                            <option name="year1" value="" selected>Năm</option>
                                            <option name="year1" value="2021">2021</option>
                                            <option name="year1" value="2020">2020</option>
                                            <option name="year1" value="2019">2019</option>
                                            <option name="year1" value="2018">2018</option>
                                            <option name="year1" value="2017">2017</option>
                                            <option name="year1" value="2016">2016</option>
                                            <option name="year1" value="2015">2015</option>
                                            <option name="year1" value="2014">2014</option>
                                            <option name="year1" value="2013">2013</option>
                                            <option name="year1" value="2012">2012</option>
                                            <option name="year1" value="2011">2011</option>
                                            <option name="year1" value="2010">2010</option>
                                            <option name="year1" value="2009">2009</option>
                                            <option name="year1" value="2008">2008</option>
                                            <option name="year1" value="2007">2007</option>
                                            <option name="year1" value="2006">2006</option>
                                            <option name="year1" value="2005">2005</option>
                                            <option name="year1" value="2004">2004</option>
                                            <option name="year1" value="2003">2003</option>
                                            <option name="year1" value="2002">2002</option>
                                            <option name="year1" value="2001">2001</option>
                                            <option name="year1" value="2000">2000</option>
                                            <option name="year1" value="1999">1999</option>
                                            <option name="year1" value="1998">1998</option>
                                            <option name="year1" value="1997">1997</option>
                                            <option name="year1" value="1996">1996</option>
                                            <option name="year1" value="1995">1995</option>
                                            <option name="year1" value="1994">1994</option>
                                            <option name="year1" value="1993">1993</option>
                                            <option name="year1" value="1992">1992</option>
                                            <option name="year1" value="1991">1991</option>
                                            <option name="year1" value="1990">1990</option>
                                            <option name="year1" value="1989">1989</option>
                                            <option name="year1" value="1988">1988</option>
                                            <option name="year1" value="1987">1987</option>
                                            <option name="year1" value="1986">1986</option>
                                            <option name="year1" value="1985">1985</option>
                                            <option name="year1" value="1984">1984</option>
                                            <option name="year1" value="1983">1983</option>
                                            <option name="year1" value="1982">1982</option>
                                            <option name="year1" value="1981">1981</option>
                                            <option name="year1" value="1980">1980</option>
                                            <option name="year1" value="1979">1979</option>
                                            <option name="year1" value="1978">1978</option>
                                            <option name="year1" value="1977">1977</option>
                                            <option name="year1" value="1976">1976</option>
                                            <option name="year1" value="1975">1975</option>
                                            <option name="year1" value="1974">1974</option>
                                            <option name="year1" value="1973">1973</option>
                                            <option name="year1" value="1972">1972</option>
                                            <option name="year1" value="1971">1971</option>
                                            <option name="year1" value="1970">1970</option>
                                            <option name="year1" value="1969">1969</option>
                                            <option name="year1" value="1968">1968</option>
                                            <option name="year1" value="1967">1967</option>
                                            <option name="year1" value="1966">1966</option>
                                            <option name="year1" value="1965">1965</option>
                                            <option name="year1" value="1964">1964</option>
                                            <option name="year1" value="1963">1963</option>
                                            <option name="year1" value="1962">1962</option>
                                            <option name="year1" value="1961">1961</option>
                                            <option name="year1" value="1960">1960</option>
                                            <option name="year1" value="1959">1959</option>
                                            <option name="year1" value="1958">1958</option>
                                            <option name="year1" value="1957">1957</option>
                                            <option name="year1" value="1956">1956</option>
                                            <option name="year1" value="1955">1955</option>
                                            <option name="year1" value="1954">1954</option>
                                            <option name="year1" value="1953">1953</option>
                                            <option name="year1" value="1952">1952</option>
                                            <option name="year1" value="1951">1951</option>
                                            <option name="year1" value="1950">1950</option>
                                        </select>
                                    </div>
                                </div>
                                <label class="home-item__name">&nbsp;</label>
                                <button type="submit" onclick="alert('${message2}')" class="btn-submit2"
                                        style="margin-top:-30px">Cập
                                    nhật
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End user center -->

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
</div>

<script src="js/main.js"></script>
<script>
    function Showmessage(message) {
        alert(message);
    }

</script>
<script>
    async function uploadFile() {
        let formData = new FormData();
        formData.append("file", ajaxfile.files[0]);
        await fetch('fileuploadservlet', {
            method: "POST",
            body: formData
        });
        alert('The file upload with Ajax and Java was a success!');
    }
</script>
</body>
</html>
