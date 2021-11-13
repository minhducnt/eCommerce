package User;

import Data.reviewIO;
import Model.Account;
import Model.Review;

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

        String action = request.getParameter("action");
        if (action == null) {
            action = "customerreview"; // default action
        }
        Account acc = (Account) request.getSession().getAttribute("acc");
        HttpSession session = request.getSession();
        long id1 = acc.getId();
        List<Review> reviewlist = reviewIO.selectOrderReviewList(id1);
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
