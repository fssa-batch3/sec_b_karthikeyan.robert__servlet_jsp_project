package in.fssa.knfunding.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.UserService;

@WebServlet("/users")
public class LisrAllUser extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<User> userList = userService.getAll();
        request.setAttribute("userList", userList);
        
        request.getRequestDispatcher("/user_list.jsp").forward(request, response);
    }
}
