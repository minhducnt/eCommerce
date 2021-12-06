package Home;

import Data.productIO;
import Data.orderDetailIO;
import Model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "search", value = "/search")
public class Search  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getCharacterEncoding() == null) {
            request.setCharacterEncoding("UTF-8");
        }
        String action = request.getParameter("action");
        String url = null;
        if (action == null) {
            action = "search"; // default action
        }
        else if(action.equals("searchproduct"))
        {
            String pn = request.getParameter("searchproduct");
            List<?> ListProductByproductname = productIO.selectListProductByproductname(pn);
            if (pn!=null||ListProductByproductname != null) {
                request.getSession().setAttribute("ListProductByproductname", ListProductByproductname);
            }
            url ="/search.jsp";
        }
        else if (action.equals("searchorder"))
        {
            String pn = request.getParameter("searchorder");
            Account acc = (Account) request.getSession().getAttribute("account");
            long id1 = acc.getId();
            List<?> Listorder = orderDetailIO.selectOrderListforSellerforSearch(id1,pn);
            if (pn!=null||Listorder != null) {
                request.getSession().setAttribute("Listorder", Listorder);
            }
            url ="/searchorder.jsp";
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
