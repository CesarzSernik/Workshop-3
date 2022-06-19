package pl.coderslab.users;

import pl.coderslab.User;
import pl.coderslab.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/edit")
public class UserEdit extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDAO userDAO = new UserDAO();
        request.setAttribute("user",userDAO.read(id));
        getServletContext().getRequestDispatcher("/users/edit.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        UserDAO userDAO = new UserDAO();
        userDAO.update(new User(id,username,email,password));
        resp.sendRedirect(req.getContextPath() + "/list");
    }
}
