package stackjava.com.accessgoogle.servlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Data.accountIO;
import Model.Account;
import stackjava.com.accessgoogle.common.GooglePojo;
import stackjava.com.accessgoogle.common.GoogleUtils;


@WebServlet(name = "login-google", value = "/login-google")
public class loginwithgoogle extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public loginwithgoogle() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = GoogleUtils.getToken(code);
            GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
            String username = googlePojo.getName();
            String mail = googlePojo.getEmail();
            String picture = googlePojo.getPicture();
            Account temp = new Account(username,mail,picture);
            temp.setEmail(mail);
            temp.setUsername(username);
            temp.setPasswordHash("khongcanthiet");
            request.setAttribute("account", temp);
            request.getSession().setAttribute("loggedInUser", temp);
            request.setAttribute("password1", temp.getPasswordHash());
            if(!accountIO.userExist(mail))
            {
                accountIO.insert(temp);
            }
            RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
            dis.forward(request, response);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}