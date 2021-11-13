
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
                <div class="account formresult ">
                    <h3 class="HeadingContent">Thông Tin Tài Khoản</h3>
                    <div class="Content_StylesNav">
                        <form method="post" action="customer">
                            <input type="hidden" name="action" value="add">
                            <div class="form-control">
                                <label class="input-label">Họ tên</label>
                                <div>
                                    <input type="text" name="fullName"  maxlength="128" class="Input-styles" value="${account.username}">
                                </div>
                            </div>
                            <div class="form-control">
                                <label class="input-label">Mật khẩu</label>
                                <div>
                                    <input type="password" name="password"  maxlength="128" minlength="6" class="Input-styles"  value="${account.passwordHash}">
                                </div>
                            </div>
                            <div class="form-control">
                                <label class="input-label">Số điện thoại</label>
                                <div>
                                    <input type="tel" pattern="(84|0[3|5|7|8|9])+([0-9]{8})\b"  name="phoneNumber" required  class="Input-styles" value="${account.phone} ">
                                </div>
                            </div>
                            <div class="form-control">
                                <label class="input-label">Email</label>
                                <div>
                                    <input type="email" name="email" required class="Input-styles" value="${account.email}">
                                </div>
                            </div>
                            <div class="form-control">
                                <label class="input-label sexcheck">Giới tính</label>
                                <label  class="Radio_StylesRadio">
                                    <input type="radio" name="gender" value="male" checked>
                                    <span class="radio-fake"></span>
                                    <span class="label">Nam</span>
                                </label>
                                <label style="margin-left: 15px" class="Radio_StylesRadio">
                                    <input type="radio" name="gender" value="female">
                                    <span class="label">Nữ</span>
                                </label>
                            </div>
                            <div class="form-control">
                                <label class="input-label">
                                    <p>Ngày sinh</p>
                                </label>
                                <div class="styles_StylesBirthdayPicker">
                                    <select id="day"  class="selectday" name="day" required>
                                        <option class="day1" value="0" selected>Ngày</option>
                                        <option class="day1" value="1" >1</option>
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
                                        <option name="month1"  value="1" >1</option>
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
                                    <select style=" margin-left: 20px" class="selectyear" name="year" required>
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

                            <div class="form-control">
                                <label class="input-label">&nbsp;</label>
                                <button type="submit" onclick="Showmessage(message)" class="btn-submit">Cập nhật</button>
                                <c:if test="${not empty message}">
                                    <script>
                                        window.addEventListener("load",function(){
                                            alert("${message}");
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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="js/main.js">
</script>
<script>


    function Showmessage(message)
    {
        alert(message);
    }
</script>
</body>
</html>
