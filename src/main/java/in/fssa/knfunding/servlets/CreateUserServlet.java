package in.fssa.knfunding.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.UserService;

@WebServlet("/createUser")
public class CreateUserServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
                HttpSession session = request.getSession();
                session.setAttribute("user", newUser);
                response.getWriter().print("<script>alert('Account Created Successfully');");
    			response.getWriter().print("window.location.href=\"" + request.getContextPath()+ "/Main_page.jsp\"");
    			response.getWriter().print("</script>");
//                RequestDispatcher dis =  request.getRequestDispatcher("/payment_login_page/login_page.jsp");
                											
//                dis.forward(request, response);

            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
