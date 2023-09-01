package in.fssa.knfunding.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.knfunding.model.Request;
import in.fssa.knfunding.service.RequestService;

@WebServlet("/request/edit")
public class RequestEditServlet extends HttpServlet {
    private RequestService requestService = new RequestService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int requestId = Integer.parseInt(request.getParameter("id"));
        Request requestDetails = requestService.findById(requestId);
        
        if (requestDetails != null) {
            request.setAttribute("requestDetails", requestDetails);
            request.getRequestDispatcher("/update_request.jsp").forward(request, response);
        } 
    }
}
