<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/sellercenter.css"/>
    <title>DHS Account</title>
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
                    <a href="${pageContext.request.contextPath}/product">
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
                    <a href="${pageContext.request.contextPath}/account" class="is-active">
                        <span>Tài khoản</span>
                    </a>
                </li>
            </ul>
        </aside>
        <section class="styles-middle-container has-sidebar">
            <div class="layout-menu">
                <div class="main-content" style="height: 500px;">
                    <div class="Account_StylesAccountLayoutInner">
                        <h3 class="HeadingContent">Thông tin tài khoản</h3>
                        <div class="Content_StylesNav">
                            <form>
                                <div class="form-control">
                                    <label class="input-label">Shop</label>
                                    <div>
                                        <label>
                                            <input type="text" name="fullName" maxlength="128" class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Số điện thoại</label>
                                    <div>
                                        <label>
                                            <input type="tel" disabled name="phoneNumber" placeholder="Nhập SĐT" class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Email</label>
                                    <div>
                                        <label>
                                            <input type="email" disabled name="email" class="Input-styles" value="">
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">Giới tính</label>
                                    <label class="Radio_StylesRadio">
                                        <input type="radio" name="gender" value="male" checked>
                                        <span class="radio-fake">

                                        </span>
                                        <span class="label">Nam</span>
                                    </label>
                                    <label class="Radio_StylesRadio">
                                        <input type="radio" name="gender" value="female">
                                        <span class="radio-fake">

                                        </span>
                                        <span class="label">Nữ</span>
                                    </label>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">
                                        <p>Ngày sinh</p>
                                        <span>(không bắt buộc)</span>
                                    </label>
                                    <div class="styles_StylesBirthdayPicker">
                                        <label>
                                            <select name="day">
                                                <option value="0">Ngày</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                                <option value="13">13</option>
                                                <option value="14">14</option>
                                                <option value="15">15</option>
                                                <option value="16">16</option>
                                                <option value="17">17</option>
                                                <option value="18">18</option>
                                                <option value="19">19</option>
                                                <option value="20">20</option>
                                                <option value="21">21</option>
                                                <option value="22">22</option>
                                                <option value="23">23</option>
                                                <option value="24">24</option>
                                                <option value="25">25</option>
                                                <option value="26">26</option>
                                                <option value="27">27</option>
                                                <option value="28">28</option>
                                                <option value="29">29</option>
                                                <option value="30">30</option>
                                                <option value="31">31</option>
                                            </select>
                                        </label>
                                        <label>
                                            <select name="month">
                                                <option value="0">Tháng</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                            </select>
                                        </label>
                                        <label>
                                            <select name="year">
                                                <option value="0">Năm</option>
                                                <option value="2021">2021</option>
                                            </select>
                                        </label>
                                    </div>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">&nbsp;</label>
                                    <label class="Checkbox__StylesCheckbox">
                                        <input type="checkbox">
                                        <span class="checkbox-fake"></span>
                                        <span class="label">Thay đổi mật khẩu</span>
                                    </label>
                                </div>
                                <div class="form-control">
                                    <label class="input-label">&nbsp;</label>
                                    <button type="submit" class="btn-submit">Cập nhật</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</main>
</body>
</html>
