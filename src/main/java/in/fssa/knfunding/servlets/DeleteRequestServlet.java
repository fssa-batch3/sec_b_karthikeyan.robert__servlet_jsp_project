package in.fssa.knfunding.servlets;

import in.fssa.knfunding.service.RequestService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete_request")
public class DeleteRequestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	int requestId = Integer.parseInt(request.getParameter("id"));

        RequestService requestService = new RequestService();
        requestService.deleteRequest(requestId);

        response.sendRedirect(request.getContextPath()+"/list_all_request"); 
    }
}
