package in.fssa.knfunding.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.knfunding.model.Request;
import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.RequestService;

@WebServlet("/create_request")
public class CreateRequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve user_id from the session
        HttpSession session = request.getSession(false);
     User user = (User) session.getAttribute("user");
     int userId = user.getId();
        // Retrieve form data
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String img_url = request.getParameter("img_url");
        int amount = Integer.parseInt(request.getParameter("amount"));

        // Create a new Request object with the retrieved form data and user_id
        Request newRequest = new Request();
        newRequest.setTitle(title);
        newRequest.setDescription(description);
        newRequest.setCategoryId(categoryId);
        newRequest.setImg_url(img_url);
        newRequest.setUser_id(userId);
        newRequest.setAmount(amount);

        RequestService requestService = new RequestService();
        requestService.createRequest(newRequest);

        response.sendRedirect(request.getContextPath() + "/Main_page.jsp");
    }
}
