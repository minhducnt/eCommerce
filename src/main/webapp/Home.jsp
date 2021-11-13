<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <link rel="stylesheet" href="Home/homePage.css" />
    <title>DHS</title>
</head>

<body>
<!---------------------------------------------------header-------------------------------------------->
<header class="style__Header">
    <section class="Container">
        <a
                style="color: white"
                href="${pageContext.request.contextPath}/summary"
        >Kênh Người Bán</a
        >
        <div class="Middle__Wrap">
            <c:if class="Middle__LeftContainer">
                <div class="logo-menu">
                    <div class="style_Logo">
                        <a href="home" class="dhs-logo">
                            <img src="Home/img/logo.svg" alt="" />
                        </a>
                    </div>
                </div>

                <div class="Category__Root">
                    <div class="Category">
                        <div>
                            <img
                                    class="Category-icon"
                                    src="https://icon-library.com/images/hamburger-icon-white/hamburger-icon-white-16.jpg"
                                    alt=""
                            />
                        </div>
                        <div class="Category-info">
                            <div class="Category-text">
                                Danh mục
                                <p>Sản phẩm</p>
                            </div>
                        </div>
                        <img
                                class="arrowIcon"
                                src="Home/img/dropdownArrow.png"
                                alt=""
                        />
                    </div>
                </div>

                <div class="FormSearch__Root">
                    <div class="FormSearch__Form">
                        <input
                                type="text"
                                placeholder="Find somethings v............... ?"
                                class="FormSearch__Input"
                                value=""
                        />
                        <button class="FormSearch__Button">
                            <img
                                    class="icon-search"
                                    src="https://salt.tikicdn.com/ts/upload/ed/5e/b8/8538366274240326978318348ea8af7c.png"
                                    alt=""
                            />
                            Search
                        </button>
                    </div>
                </div>
            <% session = request.getSession(false);
                if (session == null || session.getAttribute("loggedInUser") == null) {%>
                <a href="login"> Đăng nhập | Đăng ký</a>
            <%} else {%>
                <div class="Userstyle__Root">
                    <div class="Userstyle__Item">
                        <img class="profile-icon" src="Home/img/user.png" alt="" />
                        <a class="Userstyle__ItemText">
                            <span class="Userstyle__NoWrap">Tài khoản</span>
                            <span class="account_laber">
                                <div style="display: flex" class="buttonDropdown">
                                    <span>user-name</span>
                                    <img class="arrowIcon" src="Home/img/down.png" alt="" />
                                </div>
                                <div
                                        style="margin-top: 20px"
                                        class="UserHeader_UserDropDown disableForm"
                                >
                                    <a
                                            rel="nofollow"
                                            href="${pageContext.request.contextPath}/customerorder"
                                    >
                                        <p
                                                title="Order history"
                                                class="UserHeader_UserDropDownItem"
                                        >
                                            Order history
                                        </p>
                                    </a>

                                    <a
                                            rel="nofollow"
                                            href="${pageContext.request.contextPath}/customer"
                                    >
                                        <p
                                                title="My account"
                                                class="UserHeader_UserDropDownItem"
                                        >
                                            My account
                                        </p>
                                    </a>
                                    <a
                                            rel="nofollow"
                                            href="${pageContext.request.contextPath}/changingpassword"
                                    >
                                        <p
                                                title="Notification"
                                                class="UserHeader_UserDropDownItem"
                                        >
                                            Changing password
                                        </p>
                                    </a>
                                    <a
                                            rel="nofollow"
                                            href="${pageContext.request.contextPath}/customerReview"
                                    >
                                        <p title="Reviews" class="UserHeader_UserDropDownItem">
                                            "Reviews"
                                        </p>
                                    </a>
                                    <a rel="nofollow" href="">
                                        <p title="Log out" class="UserHeader_UserDropDownItem">
                                            Log out
                                        </p>
                                    </a>
                                </div>
                            </span>
                        </a>
                    </div>
                    <div class="Userstyle__CartItem">
                        <a href="${pageContext.request.contextPath}/cart"
                                rel="nofollow">
                            <div class="Userstyle__Item2">
                                <div class="cart-wrapper">
                                    <img
                                            class="cart-icon"
                                            src="https://salt.tikicdn.com/ts/upload/40/44/6c/b80ad73e5e84aeb71c08e5d8d438eaa1.png"
                                    />
                                    <span class="Userstyle__ItemCart">3</span>
                                </div>

                                <span class="cart-text">Giỏ Hàng</span>
                            </div>
                        </a>
                    </div>
                </div>
            <%}%>
        </div>
    </section>
</header>
<!---------------------------------------------------main-------------------------------------------->
<main style="margin-top: 130px">
    <div class="Container">
        <div class="Tag-root">
            <p>Danh mục nổi bật</p>
            <ul class="list-tag">
                <li>
                    <div class="tag-img">
                        <img
                                src="https://www.kindpng.com/picc/m/43-435202_fresh-healthy-food-png-free-download-transparent-background.png"
                                alt=""
                        />
                    </div>
                    <span>Thực phẩm</span>
                </li>
                <li>
                    <div class="tag-img">
                        <img
                                src="https://binbadecor.com.vn/wp-content/uploads/2020/10/thi%E1%BA%BFt-k%E1%BA%BF-shop-qu%E1%BA%A7n-%C3%A1o-8.jpg"
                                alt=""
                        />
                    </div>
                    <span>Quần áo</span>
                </li>
                <li>
                    <div class="tag-img">
                        <img
                                src="https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2019/08/balo-lacoste-men-s-neocroc-canvas-backpack-5d5bbdb84d190-20082019163032.png"
                                alt=""
                        />
                    </div>
                    <span>Balo</span>
                </li>
                <li>
                    <div class="tag-img">
                        <img
                                src="https://kienviet.net/wp-content/uploads/2019/09/cropped-noi-that-dong-gia-1-1440x809.jpg"
                                alt=""
                        />
                    </div>
                    <span>Nội thất</span>
                </li>
                <li>
                    <div class="tag-img">
                        <img
                                src="https://matika.vn/wp-content/uploads/2019/01/nang-tam-can-bep-viet-voi-4-mon-do-gia-dung-matika.jpg"
                                alt=""
                        />
                    </div>
                    <span>Đồ gia dụng</span>
                </li>
            </ul>
        </div>
        <div class="Middle__Wrap">
            <section class="wrapper">
                <div class="products">
                    <ul>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/sualai.jpg?v=1573720306000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">Mũi Hàn 500</h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">25000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/sp1-57698689-e2c0-429a-bf4f-3bd0f39230d8.jpg?v=1575337954000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Trạm Hàn Hakko 942 75W 200-480*C 220VAC Cực Nóng
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">1299000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://tinviet365.net/wp-content/uploads/2020/04/T%E1%BB%95ng-h%E1%BB%A3p-nh%E1%BB%AFng-h%C3%ACnh-%E1%BA%A3nh-anime-%C4%91%E1%BA%B9p-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-%E1%BA%A5n-t%C6%B0%E1%BB%A3ng.jpg"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Máy Bơm Chìm Hộ Gia Đình QDX 1500W 220VAC 40L/1min H=8m
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">1599000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/module-diy-sac-khong-day-5.jpg?v=1570011041000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module DIY Sạc Không Dây Qi IOS/Androi - Bộ phát V2
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">89000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/bo-dieu-chinh-dien-ap-sdty-200p.jpg?v=1560155769920"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Bộ Điều Chỉnh Điện Áp CHLVFU SDTY-200P 20KW 200A (BH 06
                                    Tháng)
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">2199000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://tinviet365.net/wp-content/uploads/2020/04/T%E1%BB%95ng-h%E1%BB%A3p-nh%E1%BB%AFng-h%C3%ACnh-%E1%BA%A3nh-anime-%C4%91%E1%BA%B9p-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-%E1%BA%A5n-t%C6%B0%E1%BB%A3ng.jpg"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module ISD1760 Thu Âm Thanh - Phát Âm Thanh 75s
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">115000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://tinviet365.net/wp-content/uploads/2020/04/T%E1%BB%95ng-h%E1%BB%A3p-nh%E1%BB%AFng-h%C3%ACnh-%E1%BA%A3nh-anime-%C4%91%E1%BA%B9p-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-%E1%BA%A5n-t%C6%B0%E1%BB%A3ng.jpg"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Raspberry Pi 3 E14 Model B Plus B+ 2.4G/5G Bluetooth
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">1295000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/module-iot-esp8266-esp-12e-ch340-3.jpg?v=1565950165000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module IOT ESP8266 ESP-12E CH340 V3
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">85000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/sualai.jpg?v=1573720306000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">Mũi Hàn 500</h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">25000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/sp1-57698689-e2c0-429a-bf4f-3bd0f39230d8.jpg?v=1575337954000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Trạm Hàn Hakko 942 75W 200-480*C 220VAC Cực Nóng
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">1299000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://tinviet365.net/wp-content/uploads/2020/04/T%E1%BB%95ng-h%E1%BB%A3p-nh%E1%BB%AFng-h%C3%ACnh-%E1%BA%A3nh-anime-%C4%91%E1%BA%B9p-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-%E1%BA%A5n-t%C6%B0%E1%BB%A3ng.jpg"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Máy Bơm Chìm Hộ Gia Đình QDX 1500W 220VAC 40L/1min H=8m
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">1599000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/module-diy-sac-khong-day-5.jpg?v=1570011041000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module DIY Sạc Không Dây Qi IOS/Androi - Bộ phát V2
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">89000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/bo-dieu-chinh-dien-ap-sdty-200p.jpg?v=1560155769920"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Bộ Điều Chỉnh Điện Áp CHLVFU SDTY-200P 20KW 200A (BH 06
                                    Tháng)
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">2199000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/isd1760-thu-am-thanh-phat-am-thanh-2.jpg?v=1568951032960"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module ISD1760 Thu Âm Thanh - Phát Âm Thanh 75s
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">115000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://tinviet365.net/wp-content/uploads/2020/04/T%E1%BB%95ng-h%E1%BB%A3p-nh%E1%BB%AFng-h%C3%ACnh-%E1%BA%A3nh-anime-%C4%91%E1%BA%B9p-nh%E1%BA%A5t-th%E1%BA%BF-gi%E1%BB%9Bi-%E1%BA%A5n-t%C6%B0%E1%BB%A3ng.jpg"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Raspberry Pi 3 E14 Model B Plus B+ 2.4G/5G Bluetooth
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">1295000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/module-iot-esp8266-esp-12e-ch340-3.jpg?v=1565950165000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module IOT ESP8266 ESP-12E CH340 V3
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">85000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/module-iot-esp8266-esp-12e-ch340-3.jpg?v=1565950165000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module IOT ESP8266 ESP-12E CH340 V3
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">85000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-product">
                            <div class="img-product">
                                <img
                                        class="img-prd"
                                        src="https://bizweb.dktcdn.net/thumb/large/100/228/168/products/module-iot-esp8266-esp-12e-ch340-3.jpg?v=1565950165000"
                                        alt=""
                                />
                            </div>
                            <div class="content-product">
                                <h3 class="content-product-h3">
                                    Module IOT ESP8266 ESP-12E CH340 V3
                                </h3>
                                <div class="content-product-deltals">
                                    <div class="price">
                                        <span class="money">85000đ</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
    </div>
</main>
<!---------------------------------------------------footer-------------------------------------------->
<script src="js/main.js"></script>
</body>
</html>