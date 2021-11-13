package User;

import Model.Cart;
import Model.CartItem;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "cart", value = "/cart")
public class CartServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext sc = getServletContext();
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart"; // default action
        }
        String url = "/cart.jsp";
        if (action.equals("cart")) {
            String productCode = request.getParameter("productCode");
            String amountString = request.getParameter("amount");

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            //if the user enters a negative or invalid quantity,
            //the quantity is automatically reset to 1.
            short amount;
            try {
                amount = Short.parseShort(amountString);
                if (amount < 0) {
                    amount = 1;
                }
            } catch (NumberFormatException nfe) {
                amount = 1;
            }

            CartItem cartItem = new CartItem();
            //cartItem.setProductByProductId(product);
//            cartItem.setAmount(amount);
//            if (amount > 0) {
//                cart.addItem(cartItem);
//            } else if (amount == 0) {
//                cart.removeItem(cartItem);
//            }

            session.setAttribute("cart", cart);
            request.setAttribute("amount", amount);
            url = "/cart.jsp";
        }
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
