package in.fssa.knfunding.servlets;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.knfunding.service.UserService;

@WebServlet("/users")
public class ListAllUser extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@SuppressWarnings("unused")
	private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      

        RequestDispatcher dispatcher = request.getRequestDispatcher("./our profile/our_profile.jsp");
        dispatcher.forward(request, response);
    }
}

