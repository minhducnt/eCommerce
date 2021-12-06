<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/sellercenter.css"/>
    <title>DHS Product Seller</title>
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

        <div class="account-avatar">
            <a style="text-decoration: none; color: black;" href="usercenter.jsp"><span>${account.username}</span></a>
        </div>
    </section>
</header>
<main>
    <section class="layout-container">
        <aside class="styles-left-SideBar">
            <ul class="nav-bar-account">
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
                    <a href="${pageContext.request.contextPath}/account">
                        <span>Tài khoản</span>
                    </a>
                </li>
            </ul>
        </aside>
        <section class="styles-middle-container has-sidebar">
            <div class="layout-menu">
                <div class="main-content">
                    <div class="Account_StylesAccountLayoutInner">
                        <h3 class="HeadingContent">Thêm sản phẩm</h3>
                        <div class="Content_StylesNav">
                            <form action="product" method="post">
                                <input type="hidden" name="action" value="addproduct">
                                <div class="form-control">
                                    <label class="input-label">Tên sản phẩm</label>
                                    <div>
                                        <label>
                                            <input type="text" name="productName" maxlength="128" class="Input-styles"
                                                   value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Giá sản phẩm</label>
                                    <div>
                                        <label>
                                            <input type="text" name="productprice"
                                                   class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Chất lượng</label>
                                    <div>
                                        <label>
                                            <input type="text" name="productQuality"
                                                   class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Trạng thái</label>
                                    <div>
                                        <label>
                                            <input type="text" name="productstatus"
                                                   class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Chi tiết sản phẩm</label>
                                    <div>
                                        <label>
                                            <input type="text"  name="productcontent" class="Input-styles"
                                                   value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Thông tin sản phẩm</label>
                                    <div>
                                        <label>
                                            <input type="text" name="productDecription"
                                                   class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Link Hình ảnh sản phẩm</label>
                                    <div>
                                        <label>
                                            <input type="text" name="productimage"
                                                   class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>

                                <div class="form-control">
                                    <label class="input-label">&nbsp;</label>
                                    <button type="submit" class="btn-submit">Cập nhật</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="content">
                        <h3 class="title">Thông tin sản phẩm</h3>
                        <div class="inner">

                            <table>
                                <thead>
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th>Mô tả</th>
                                    <th>Giá</th>
                                    <th>Link ảnh</th>
                                </tr>
                                </thead>
                                <c:forEach items="${listproductbyshop}" var="element">
                                    <tbody>
                                    <tr>
                                        <td>${element[0]}</td>
                                        <td>${element[1]}</td>
                                        <td>${element[2]}</td>
                                        <td>${element[3]}</td>
                                    </tr>
                                    </tbody>
                                </c:forEach>

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
