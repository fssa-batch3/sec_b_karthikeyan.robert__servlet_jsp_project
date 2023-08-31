package in.fssa.knfunding.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.UserService;

@WebServlet("/createUser")
public class CreateUserServlet extends HttpServlet {
    private UserService userService = new UserService(); 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phoneNumberStr = request.getParameter("phoneNumber");
            String password = request.getParameter("password");
            boolean active = request.getParameter("active") != null;
            
            long phoneNumber = Long.parseLong(phoneNumberStr); 
            
            User newUser = new User();
            
            newUser.setFullName(name);
            newUser.setEmail(email);
            newUser.setPhoneNumber(phoneNumber); 
            newUser.setActive(active);
            newUser.setPassword(password);
            
            userService.create(newUser); 

            response.sendRedirect("list_all_user.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
