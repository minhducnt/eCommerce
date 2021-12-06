package Home;

import Data.productIO;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogoutServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute("username");
            session.removeAttribute("loggedInUser");
            session.removeAttribute("address");
            session.removeAttribute("message");
            session.removeAttribute("listaddress");
            session.removeAttribute("cart");
            session.removeAttribute("productCode");
            session.removeAttribute("amount");
            session.removeAttribute("account");
            session.removeAttribute("reviewlist");
            session.removeAttribute("username");
            session.removeAttribute("listOrder");
        }
        getServletContext()
                .getRequestDispatcher("/Home.jsp")
                .forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}