package in.fssa.knfunding.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import in.fssa.knfunding.model.User;

@WebServlet("/MainPage")
public class MainPageServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        if (session != null) {
            User user = (User) session.getAttribute("user");

            if (user != null) {
              
                String fullName = user.getFullName();
                request.setAttribute("fullName", fullName);
                request.getRequestDispatcher("/Main_page.jsp").forward(request, response);
            } else {
                
                response.sendRedirect(request.getContextPath() + "/Login");
            }
        } else {
            
            response.sendRedirect(request.getContextPath() + "/Login");
        }
    }
}
