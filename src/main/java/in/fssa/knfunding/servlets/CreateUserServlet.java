package in.fssa.knfunding.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
            
            if (email != null && !email.isEmpty()) {
                long phoneNumber = 0; 
                
                if (phoneNumberStr != null && !phoneNumberStr.isEmpty()) {
                    phoneNumber = Long.parseLong(phoneNumberStr);
                }
                
                User newUser = new User();
                newUser.setFullName(name);
                newUser.setEmail(email);
                newUser.setPhoneNumber(phoneNumber); 
                newUser.setActive(active);
                newUser.setPassword(password);
                
                userService.create(newUser); 
                
                RequestDispatcher dis =  request.getRequestDispatcher("/payment_login_page/login_page.jsp");
                											
                dis.forward(request, response);
            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
