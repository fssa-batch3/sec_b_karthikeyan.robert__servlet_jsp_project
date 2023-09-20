package in.fssa.knfunding.servlets;

import in.fssa.knfunding.model.Request;
import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.RequestService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/user_requests")
public class ListRequestByUserId extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            RequestService requestService = new RequestService();
            HttpSession session = request.getSession(false);
            
            User user =(User) session.getAttribute("user");
            int userId = user.getId();
            List<Request> userRequests = requestService.getRequestsByUserId(userId);
            
            if (userRequests != null) {
                request.setAttribute("userRequests", userRequests);
                System.out.println(request.getAttribute("userRequests"));
                RequestDispatcher dispatcher = request.getRequestDispatcher("our profile/my_campaigns.jsp");
                dispatcher.forward(request, response);
            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
