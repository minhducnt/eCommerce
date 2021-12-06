package User;

import Data.reviewIO;
import Model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "customerReview", value = "/customerReview")
public class CustomerReviewServlet  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getCharacterEncoding() == null) {
            request.setCharacterEncoding("UTF-8");
        }
        String action = request.getParameter("action");
        if (action == null) {}
        Account acc = (Account) request.getSession().getAttribute("account");
        HttpSession session = request.getSession();
        long id1 = acc.getId();
        List<?> reviewlist = reviewIO.selectOrderReviewList(id1);
        session.setAttribute("reviewlist", reviewlist);
        String url = "/customerreview.jsp";
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
