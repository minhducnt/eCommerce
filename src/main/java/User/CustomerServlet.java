package User;

import Data.accountIO;
import Data.cartIO;
import Data.shopIO;
import Model.Account;
import Model.Cart;
import Model.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


@MultipartConfig
@WebServlet(name = "customer", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String SAVE_DIR = "webapp\\hinhanh";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getCharacterEncoding() == null) {
            request.setCharacterEncoding("UTF-8");
        }
        String url="/usercenter.jsp";
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        Account  account = (Account) request.getSession().getAttribute("account");
        Shop    shop =  new Shop();
         Cart  cart = new Cart();
        if (action == null) {
            action = "join";
        }
        if (action.equals("join")) {
            action = "customer";
        }
        else if (action.equals("add")) {

            String username;
            boolean Gender;
            String phone;
            String message2 = null;
            Timestamp lastUpdate;
            username =  request.getParameter("fullName");
            String password =  request.getParameter("password");
            phone =request.getParameter("phoneNumber");
            String email =  request.getParameter("email");
            String sex = request.getParameter("gender");

            Gender = sex.equals("male");
            String   day=request.getParameter("day");
            String   month=request.getParameter("month");
            String   year=request.getParameter("year");
            //birhday
            Date birthday1 = null;
            DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            String dateString = year+"-"+month+"-"+day;

            try {
                birthday1 = sdf.parse(dateString);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            assert birthday1 != null;
            java.sql.Date birthday = new java.sql.Date(birthday1.getTime());
            boolean role = true;
            //last update
            lastUpdate = new Timestamp(System.currentTimeMillis());

            if ( username == null || username.isEmpty() || phone == null || phone.isEmpty()) {
                message2 = "Xin hãy điền tất cả các giá trị";
                account.setBirthday(birthday);
                account.setGender(Gender);
                account.setLastUpdate(lastUpdate);
                account.setPhone(phone);
                account.setRole(role);
                account.setShopId(0);
                account.setUsername(username);
                accountIO.update(account);

            }
            else {
                account.setBirthday(birthday);
                account.setGender(Gender);
                account.setLastUpdate(lastUpdate);
                account.setPhone(phone);
                account.setRole(role);
                account.setShopId(0);
                account.setUsername(username);
                accountIO.update(account);
                cart.setAccountByAccountId(account);
                cartIO.insert(cart);
                shop.setAccountByAccountId(account);
                shopIO.insert(shop);
                account.setShopId(shop.getId());
                accountIO.update(account);
            }
            url = "/usercenter.jsp";
            request.getSession().setAttribute("account", account);
            request.getSession().setAttribute("shop", shop);
           //request.getSession().setAttribute("cart", cart);
            request.setAttribute("cart", cart);
            request.setAttribute("account", account);
            request.setAttribute("avatar", account.getAvatar());
            request.setAttribute("username", username);
            if(request.getParameter("message2")!=null)
            {
                request.setAttribute("message2", message2);
            }
            request.getSession().setAttribute("username", account.getUsername());
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }


}
