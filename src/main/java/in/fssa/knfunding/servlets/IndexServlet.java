package in.fssa.knfunding.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.knfunding.model.Request;
import in.fssa.knfunding.service.RequestService;

@WebServlet("/list_all_requests")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	 protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		        RequestService requestService = new RequestService();
		        List<Request> requestList = requestService.getAllRequests();
	        

	        request.setAttribute("requestList", requestList);
	        System.out.println(request.getAttribute("requestList"));

	        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
	        dispatcher.forward(request, response);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doGet(request, response);
	    }

}
