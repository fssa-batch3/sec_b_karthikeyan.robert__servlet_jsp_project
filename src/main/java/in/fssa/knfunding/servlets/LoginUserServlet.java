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

@WebServlet("/Login")
public class LoginUserServlet extends HttpServlet {
	private UserService userService = new UserService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = userService.findByEmail(email, password);
		System.out.println(user);

		if (user != null && user.getEmail().equals(email) && user.getPassword().equals(password)) {

			HttpSession session = request.getSession();
			session.setAttribute("user", user);

			response.sendRedirect(request.getContextPath() + "/Main_page.jsp");
		} else {

			request.setAttribute("errorMessage", "Invalid.Please try again.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("payment_login_page/login_page.jsp");
			dispatcher.forward(request, response);
		}
	}
	
}

