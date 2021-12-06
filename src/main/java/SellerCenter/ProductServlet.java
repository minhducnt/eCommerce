package SellerCenter;

import Data.productIO;
import Data.shopIO;
import Model.Account;
import Model.Product;
import Model.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

@WebServlet(name = "product", value = "/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getCharacterEncoding() == null) {
            request.setCharacterEncoding("UTF-8");
        }
        String url = "/product.jsp";
        Account acc = (Account) request.getSession().getAttribute("account");
        HttpSession session = request.getSession();

        String action = request.getParameter("action");
        if(action==null)
        {
            action = "product";
        }
         if (action.equals("addproduct"))
        {
            String productcontent = request.getParameter("productcontent");
            String productName = request.getParameter("productName");
            String productprice1 = request.getParameter("productprice");
            String productDecription = request.getParameter("productDecription");
            String productstatus1 = request.getParameter("productstatus");
            String productQuality1 = request.getParameter("productQuality");
            String productimage = request.getParameter("productimage");
            Shop s = shopIO.getShopbyUserID(acc.getId());
            Timestamp createAt =  new Timestamp(System.currentTimeMillis());
            Short productQuality =  Short.parseShort(productQuality1);
            Short productstatus = Short.parseShort(productstatus1);
            long productprice = Long.parseLong(productprice1);
            Product  p = new Product(productimage,productcontent,productDecription,productQuality,productprice,productName,productstatus,s,createAt);
            productIO.insert(p);
        }
        long id = acc.getId();
        List  listproductbyshop = productIO.selectListProductbyshop(acc.getId());
        session.setAttribute("listproductbyshop", listproductbyshop);
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
