package in.fssa.knfunding.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exception.ValidationException;
import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.UserService;

@WebServlet("/user/update")
public class UpdateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserService userService = new UserService();
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        Long phoneNumber = Long.parseLong(request.getParameter("phone_number"));
        String password = request.getParameter("password");
        int id = Integer.parseInt(request.getParameter("id"));

        User updatedUser = new User();
        updatedUser.setId(id); 
        updatedUser.setFullName(name); 
        updatedUser.setEmail(email); 
        updatedUser.setPassword(password); 

        try {
			userService.update(updatedUser);
		} catch (ValidationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		response.sendRedirect(request.getContextPath() + "/list_all_user.jsp");
		
		

    }
}
