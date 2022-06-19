package pl.coderslab.users;

import pl.coderslab.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete")
public class UserDelete extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        UserDAO userDao = new UserDAO();
        userDao.delete(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect(request.getContextPath() + "/list");

    }
}
