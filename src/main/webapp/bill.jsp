<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="account" type="Model.Account"--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/sellercenter.css"/>
    <title>DHS Bill Seller</title>

    <!-- Logo -->
    <link rel="shortcut icon"
          type="image/x-icon"
          href="assets/img/logo/favicon.ico">
</head>
<body>
<header class="header-root">
    <section class="header-container">
        <a href="${pageContext.request.contextPath}/home" class="content-logo"><img
                src="SellerCenter/img/android-chrome-192x192.png" alt=""></a>
        <a href="${pageContext.request.contextPath}/account" class="style-content">
            <span>Seller Center</span>
        </a>
        <% if (session == null || session.getAttribute("account") == null) {%>
        <div class="account-avatar">
            <span>Signup/Login</span>
        </div>
        <%} else {%>
        <div class="account-avatar">
            <a style="text-decoration: none; color: black;" href="usercenter.jsp"><span>${account.username}</span></a>
            <%}%>
        </div>
    </section>
</header>
<main>
    <section class="layout-container">
        <aside class="styles-left-SideBar">
            <ul class="nav-bar-account">
                <li>
                    <a href="${pageContext.request.contextPath}/product">
                        <span>Sản Phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/bill" class="is-active">
                        <span>Đơn hàng</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/account">
                        <span>Tài khoản</span>
                    </a>
                </li>
            </ul>
        </aside>
        <section class="styles-middle-container has-sidebar">
            <div class="layout-menu">
                <div class="main-content">
                    <div class="content">
                        <h3 class="title">Tìm kiếm đơn hàng</h3>
                        <form style="width: 800px" action="search" method="get">
                            <input type="hidden" name="action" value="searchorder">
                            <div class="header__search">
                                <div class="header__search-input-wrap">
                                    <input type="text" name="searchorder" class="header__search-input"
                                           placeholder="Nhập để tìm kiếm đơn hàng"/>
                                </div>
                                <button type="submit" class="btn submit header__search-btn">
                                    <i class="header__search-btn-icon fas fa-search">Tìm kiếm</i>
                                </button>

                            </div>
                        </form>

                    </div>
                    <div class="content">
                        <h3 class="title">Thông tin đơn hàng</h3>
                        <div class="inner">
                            <%--@elvariable id="listBill" type="java.util.List"--%>
                            <c:if test="${empty listBill}">
                                <span>Load Failed</span>
                            </c:if>
                            <c:if test="${not empty listBill}">

                                <table>
                                    <thead>
                                    <tr>
                                        <th>Mã thanh toán</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Số điện thoại</th>
                                        <th>Ngày mua</th>
                                        <th>Giá</th>
                                        <th>Trạng thái</th>
                                        <th>Số lượng</th>
                                    </tr>
                                    </thead>
                                    <c:forEach items="${listBill}" var="element">
                                        <tbody>
                                        <tr>
                                            <td>${element[0]}</td>
                                            <td>${element[2]}</td>
                                            <td>${element[5]}</td>
                                            <td>${element[1]}</td>
                                            <td>${element[3]}</td>
                                            <td>${element[4]}</td>
                                            <td>${element[6]}</td>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
                                </table>

                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</main>
</body>
</html>
