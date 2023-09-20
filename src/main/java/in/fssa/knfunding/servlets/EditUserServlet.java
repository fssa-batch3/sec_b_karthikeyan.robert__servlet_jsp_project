package in.fssa.knfunding.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.UserService;
@WebServlet("/user/edit")
public class EditUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        int id = Integer.parseInt(request.getParameter("id"));
        
        UserService userService = new UserService();
        
            User user = userService.findById(id);
            request.setAttribute("userDetails", user);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("/update_user.jsp");
            dispatcher.forward(request, response);
     
    }
	
}

