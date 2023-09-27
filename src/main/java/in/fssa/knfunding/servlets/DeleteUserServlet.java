package in.fssa.knfunding.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import in.fssa.knfunding.service.UserService;

@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	int userId = Integer.parseInt(request.getParameter("id"));

        UserService userService = new UserService();
        userService.delete(userId);

        response.getWriter().print("<script>alert('Account has been Deleted');");
		response.getWriter().print("window.location.href=\"" + request.getContextPath()+ "/index.jsp\"");
		response.getWriter().print("</script>");
    }
}
