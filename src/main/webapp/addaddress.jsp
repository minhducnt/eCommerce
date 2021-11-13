<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>UserCenter</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <link rel="stylesheet" href="css/newcss.css" />
    <link rel="stylesheet" href="Home/homePage.css"/>
</head>
<body>
<!---------------------------------------------------header-------------------------------------------->
<header class="style__Header">
    <section class="Container">
        <a style="color: white" href="${pageContext.request.contextPath}/summary">Kênh Người Bán</a>
        <div class="Middle__Wrap">
            <div class="Middle__LeftContainer">
                <div class="logo-menu">
                    <div class="style_Logo">
                        <a href="home" class="dhs-logo">
                            <img src="Home/img/logo.svg" alt=""/>
                        </a>
                    </div>
                </div>

                <div class="Category__Root">
                    <div class="Category">
                        <div>
                            <img class="Category-icon" src="https://icon-library.com/images/hamburger-icon-white/hamburger-icon-white-16.jpg"  alt="">
                        </div>
                        <div class="Category-info">
                            <div class="Category-text">Danh mục
                                <p>Sản phẩm</p>
                            </div>

                        </div>
                        <img class="arrowIcon" src="Home/img/dropdownArrow.png" alt=""/>
                    </div>
                </div>

                <div class="FormSearch__Root">
                    <div class="FormSearch__Form">
                        <input type="text" placeholder="Find somethings v............... ?" class="FormSearch__Input" value="" />
                        <button class="FormSearch__Button">
                            <img class="icon-search"
                                 src="https://salt.tikicdn.com/ts/upload/ed/5e/b8/8538366274240326978318348ea8af7c.png"  alt=""/>
                            Search
                        </button>
                    </div>
                </div>

                <div class="Userstyle__Root">
                    <div class="Userstyle__Item">
                        <img class="profile-icon" src="Home/img/user.png" alt=""/>
                        <a class="Userstyle__ItemText" >
                            <span class="Userstyle__NoWrap">Tài khoản</span>
                            <span class="account_laber">
                <div style="display: flex" class="buttonDropdown">
                <span>user-name</span>
                <img class="arrowIcon" src="Home/img/down.png" alt=""/>
                </div>
                <div style="margin-top: 20px;" class="UserHeader_UserDropDown disableForm">
                  <a rel="nofollow" href="${pageContext.request.contextPath}/customerorder">
                    <p title="Order history" class="UserHeader_UserDropDownItem">
                      Order history
                    </p>
                  </a>

                  <a rel="nofollow" href="${pageContext.request.contextPath}/customer">
                    <p title="My account" class="UserHeader_UserDropDownItem">
                      My account
                    </p>
                  </a>
                   <a rel="nofollow" href="${pageContext.request.contextPath}/changingpassword">
                    <p title="Notification" class="UserHeader_UserDropDownItem">
                      Changing password
                    </p>
                  </a>
                  <a rel="nofollow" href="${pageContext.request.contextPath}/customerReview">
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
                        <a href="${pageContext.request.contextPath}/cart" rel="nofollow">
                            <div class="Userstyle__Item2">
                                <div class="cart-wrapper">
                                    <img class="cart-icon"
                                         src="https://salt.tikicdn.com/ts/upload/40/44/6c/b80ad73e5e84aeb71c08e5d8d438eaa1.png"  />
                                    <span class="Userstyle__ItemCart">3</span>
                                </div>

                                <span class="cart-text">Giỏ Hàng</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</header>
<!---------------------------------------------------main-------------------------------------------->
<main>
    <section class="Container">
        <div class="Account_Layout">
            <div class="breadcrumb_Container"></div>
            <aside class="Account_StylesSideBar">
                <div class="Account_StylesAvatar">

                    <div class=" file1 temp" style="width: 10%; margin-top: 10px">
                        <img class="avt"  id="photo" src="img/logo_ico.png">
                        <div class="Btnclick">
                            <input type="file" id="file" name="img" >
                            <label  for="file" id="uploadBtn">Choose Avatar</label>
                        </div>
                    </div>
                    <div style="margin-left: 100px" class="info">
                        Tài Khoản
                        <strong>user-name</strong>
                    </div>
                </div>

                <ul class="Account_NavBar">
                    <li><a  class="is-active" href="customer"><span>Thông tin tài khoản</span></a></li>
                    <li><a    href="changingpassword"><span>Đổi mật khẩu</span></a></li>
                    <li><a   href="customerorder"><span>Quản lý đơn hàng</span></a></li>
                    <li><a  href="addresslist"><span>Sổ địa chỉ</span></a></li>
                    <li><a  href="customerReview"><span>Nhận xét sản phẩm đã mua</span></a></li>
                </ul>
            </aside>
            <div class="Account_StylesAccountLayoutInner">
                <div style="width: 970px;" id="addadress" class="themdiachi ">
                    <h3 class="HeadingContent">Thêm địa chỉ</h3>

                    <div class="Content_StylesNav">

                        <form class="formthemdiachi" method="post" action="addaddress" >
                            <input type="hidden" name="action" value="add">
                            <div class="form-control ">
                                <label  class="input-label">Họ và tên:</label>
                                <div>
                                    <input class="inputdiachi" type="text" required="" name="fullName" placeholder="Nhập họ và tên" maxlength="50" class="Input-sc-17i9bto-0 girQwT" value="${account.username}">
                                </div>
                            </div>
                            <div class="form-control "><label name="telephone" class="input-label">Số điện thoại:</label>
                                <div><input class="inputdiachi" type="text" required="" name="telephone" placeholder="Nhập số điện thoại" class="Input-sc-17i9bto-0 girQwT" value="${account.phone}"></div>
                            </div>
                            <div class="form-control">
                                <label name="region" class="input-label">Tỉnh/Thành phố:</label>
                                <select id="nameprovince" name="province"  class="inputdiachi" required=""><option value="">Chọn Tỉnh/Thành phố</option>
                                    <option>Hồ Chí Minh</option>
                                    <option>Hà Nội</option>
                                    <option>Đà Nẵng</option>
                                    <option>An Giang</option>
                                    <option>Bà Rịa - Vũng Tàu</option>
                                    <option>Bắc Giang</option>
                                    <option>Bắc Kạn</option>
                                    <option >Bạc Liêu</option>
                                    <option >Bắc Ninh</option>
                                    <option >Bến Tre</option>
                                    <option >Bình Dương</option>
                                    <option >Bình Phước</option>
                                    <option >Bình Thuận</option>
                                    <option >Bình Định</option>
                                    <option >Cà Mau</option>
                                    <option >Cần Thơ</option>
                                    <option >Cao Bằng</option>
                                    <option >Gia Lai</option>
                                    <option >Hà Giang</option>
                                    <option >Hà Nam</option>
                                    <option >Hà Tĩnh</option>
                                    <option >Hải Dương</option>
                                    <option >Hải Phòng</option>
                                    <option >Hậu Giang</option>
                                    <option >Hoà Bình</option>
                                    <option >Hưng Yên</option>
                                    <option >Khánh Hòa</option>
                                    <option >Kiên Giang</option>
                                    <option >Kon Tum</option>
                                    <option >Lai Châu</option>
                                    <option >Lâm Đồng</option>
                                    <option >Lạng Sơn</option>
                                    <option >Lào Cai</option>
                                    <option >Long An</option>
                                    <option >Nam Định</option>
                                    <option >Nghệ An</option>
                                    <option >Ninh Bình</option>
                                    <option >Ninh Thuận</option>
                                    <option >Phú Thọ</option>
                                    <option >Phú Yên</option>
                                    <option >Quảng Bình</option>
                                    <option >Quảng Nam</option>
                                    <option >Quảng Ngãi</option>
                                    <option >Quảng Ninh</option>
                                    <option >Quảng Trị</option>
                                    <option >Sóc Trăng</option>
                                    <option >Sơn La</option>
                                    <option >Tây Ninh</option>
                                    <option >Thái Bình</option>
                                    <option >Thái Nguyên</option>
                                    <option >Thanh Hóa</option>
                                    <option >Thừa Thiên Huế</option>
                                    <option >Tiền Giang</option>
                                    <option >Trà Vinh</option>
                                    <option >Tuyên Quang</option>
                                    <option >Vĩnh Long</option>
                                    <option >Vĩnh Phúc</option>
                                    <option >Yên Bái</option>
                                    <option >Đắk Lắk</option>
                                    <option >Đắk Nông</option>
                                    <option >Điện Biên</option>
                                    <option >Đồng Nai</option>
                                    <option >Đồng Tháp</option>
                                </select>
                            </div>
                            <div class="form-control">
                                <label name="district"  class="input-label">Quận huyện:</label>
                                <input class="inputdiachi" type="text" required="" name="district" placeholder="Nhập huyện" maxlength="50" class="Input-sc-17i9bto-0 girQwT"  value="${address.district}">
                            </div>
                            <div class="form-control ">
                                <label name="address" class="input-label">
                                    Địa chỉ:</label>
                                <div>
                                    <textarea class="inputdiachi" required="" name="street" rows="5" placeholder="Nhập địa chỉ, phường/ xã"></textarea>
                                </div>
                            </div>

                           <div class="form-control">
                            <label class="input-label">&nbsp;</label>
                            <button type="submit" class="btn-submit">
                                Cập nhật</button>
                               <c:if test="${not empty message1}">
                                   <script>
                                       window.addEventListener("load",function(){
                                           alert("${message1}");
                                       })
                                   </script>
                               </c:if>
                        </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
</main>
<!---------------------------------------------------footer-------------------------------------------->
<script src="js/main.js"></script>
</body>
</html>