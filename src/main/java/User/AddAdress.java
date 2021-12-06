package User;

import Data.addressIO;
import Data.userAddressIO;
import Model.Account;
import Model.Address;
import Model.UserAddress;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addaddress", value = "/addaddress")
public class AddAdress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getCharacterEncoding() == null) {
            request.setCharacterEncoding("UTF-8");
        }
        String url = "/addaddress.jsp";
        String action = request.getParameter("action");
        if (action == null) {
            action = "addaddress"; // default action
        } else if (action.equals("add")) {
            String username = request.getParameter("fullName");
            String phone;
            String message = "";
            String message1 = "";
            String province;
            String district;
            String addressname;
            phone = request.getParameter("telephone");
            province = request.getParameter("province");
            district = request.getParameter("district");
            addressname = request.getParameter("street");
            Address address = new Address(phone,addressname,province,district);
            HttpSession session = request.getSession();
            session.setAttribute("address", address);
            Account acc = (Account) request.getSession().getAttribute("account");
            if ( addressname == null || addressname.isEmpty() || phone == null || phone.isEmpty()|| province == null || province.isEmpty()|| district == null || district.isEmpty()) {
                message = "Xin hãy nhập đủ giá trị.";
            }
            else {
                message1 = "Cập nhật địa chỉ thành công";
                long id1 = acc.getId();
                addressIO.insert(address);
                long id2 = address.getId();
                UserAddress ua = new UserAddress(id1,id2);
                userAddressIO.insert(ua);
            }
            url = "/addaddress.jsp";
            request.setAttribute("message", message);
            request.setAttribute("message1", message1);
            request.getSession().setAttribute("address", address);

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
