package in.fssa.knfunding.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.knfunding.model.Request;
import in.fssa.knfunding.service.RequestService;

@WebServlet("/request/update")
public class UpdateRequestServlet extends HttpServlet {
    private RequestService requestService = new RequestService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int requestId = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int categoryId = Integer.parseInt(request.getParameter("category_id"));
        int amount = Integer.parseInt(request.getParameter("amount"));
        
        Request updatedRequest = new Request();
        updatedRequest.setId(requestId);
        updatedRequest.setTitle(title);
        updatedRequest.setDescription(description);
        updatedRequest.setCategoryId(categoryId);
        updatedRequest.setAmount(amount);

       

        requestService.updateRequest(requestId, updatedRequest);
        
        response.sendRedirect(request.getContextPath() + "/list_all_request");
        
        
      
    }
}
