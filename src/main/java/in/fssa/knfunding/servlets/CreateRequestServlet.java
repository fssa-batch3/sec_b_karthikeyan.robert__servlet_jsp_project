package in.fssa.knfunding.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.knfunding.model.Request;
import in.fssa.knfunding.service.RequestService;
@WebServlet("/create_request")
public class CreateRequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        int userId = Integer.parseInt(request.getParameter("userId"));
        int amount = Integer.parseInt(request.getParameter("amount"));

        Request newRequest = new Request();
        newRequest.setTitle(title);
        newRequest.setDescription(description);
        newRequest.setCategoryId(categoryId);
        newRequest.setUserId(userId);
        newRequest.setAmount(amount);
        RequestService requestService = new RequestService();
        requestService.createRequest(newRequest);

        response.sendRedirect("list_all_request.jsp");
    }

	}











