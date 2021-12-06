package User;

import Data.addressIO;
import Model.Account;
import Model.Address;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "addresslist", value = "/addresslist")
public class AddressList extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getCharacterEncoding() == null) {
            request.setCharacterEncoding("UTF-8");
        }
        String action = request.getParameter("action");
        if (action == null) {
            action = "addresslist"; // default action
        }
        Account acc = (Account) request.getSession().getAttribute("account");
        long id1 = acc.getId();
        List<?> listaddress = addressIO.selectUserAdress(id1);
        request.getSession().setAttribute("listaddress", listaddress);
        String url = "/AddressList.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
