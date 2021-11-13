package User;

import Data.accountIO;
import Model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "login", value = "/login")
public class Users extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/login.jsp";
        String action = request.getParameter("action");
        String message = "";
        Account temp = null;
        if (action == null) {
            action = "join";  // default action
        }
        if (action.equals("join")) {
            action = "login";
        }
        else if(action.equals("add"))
        {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            if(accountIO.userExist(email))
            {
                message = "Tài khoản đã tồn tài";
            }else{
                message = "Cập nhật tài khoản thành công";
                 temp = new Account(email,password);
                 accountIO.insert(temp);
                request.setAttribute("loggedInUser", temp);
                request.setAttribute("message", message);
            }
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
        }
        else if (action.equals("signin")){
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            if(accountIO.userExist(email))
            {
               temp = accountIO.selectAcc(email);
              if(temp.getPasswordHash().equals(password))
              {
                  url = "/HOME.jsp";
              }else {
                  message = "Mật khẩu không trùng khớp";
              }

            }
            else {
                message = "Tài khoản chưa tồn tại";
            }
            request.setAttribute("account", temp);
            request.setAttribute("message", message);
        }
        request.getSession().setAttribute("acc", temp);
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
