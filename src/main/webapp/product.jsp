<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/sellercenter.css"/>
    <title>DHS Product Seller</title>
</head>
<body>
<header class="header-root">
    <section class="header-container">
        <a href="${pageContext.request.contextPath}/home" class="content-logo"><img src="SellerCenter/img/android-chrome-192x192.png" alt=""></a>
        <a href="${pageContext.request.contextPath}/summary" class="style-content">
            <span>Seller Center</span>
        </a>

        <div class="account-avatar">
            <img class="avt" src="SellerCenter/img/avatar.jfif" alt="">
            <span>Lê Trần Minh Nhựt</span>
        </div>
    </section>
</header>
<main>
    <section class="layout-container">
        <aside class="styles-left-SideBar">
            <ul class="nav-bar-account">
                <li>
                    <a href="${pageContext.request.contextPath}/summary">
                        <span>Doanh Thu</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/product" class="is-active">
                        <span>Sản Phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/bill">
                        <span>Đơn hàng</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/delivery">
                        <span>Vận chuyển</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/reviews">
                        <span>Đánh giá</span>
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
                        <h3 class="title">Thêm sản phẩm</h3>
                        <form>
                            <div class="form-control"></div>
                            <div class="form-control"></div>
                            <div class="form-control"></div>
                            <div class="form-control"></div>
                            <div class="form-control"></div>
                            <div class="form-control"></div>
                        </form>
                    </div>
                    <div class="content">
                        <h3 class="title">Thông tin sản phẩm</h3>
                        <div class="inner">
                            <table>
                                <thead>
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th>Loại</th>
                                    <th>Tag</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</main>
</body>
</html>
