package User;


import Data.accountIO;
import Model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "changingpassword", value = "/changingpassword")
public class ChangingPasswordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url="/ChangingPassword.jsp";
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        if (action.equals("join")) {
            action = "changingpassword"; // default action
        }
        else if (action.equals("changingPass")) {

            Account acc = (Account) request.getSession().getAttribute("acc");
            String oldPassword = request.getParameter("odlPassword");
            String newPassword = request.getParameter("newPassword");
            String confirmPassword = request.getParameter("confirmNewPassword");
            String message = "";
            if (oldPassword.equals(acc.getPasswordHash())) {
                if (newPassword.equals(confirmPassword)) {
                    message = "Password has been change!";
                    acc.setPasswordHash(newPassword);
                    accountIO.update(acc);
                } else {
                    message = "password does not macth";
                }
            } else {
                message = "Invalid password";
            }
             url = "/ChangingPassword.jsp";
            request.setAttribute("account", acc);
            request.setAttribute("message", message);
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
