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
/**
 * Servlet implementation class CreateRequest
 */
public class CreateRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	    try {
	    	
	        String title = request.getParameter("title");
	        String description = request.getParameter("description");
	        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
	        int userId = Integer.parseInt(request.getParameter("userId"));
	        double amount = Double.parseDouble(request.getParameter("amount"));

	        Request request1 = new Request();
	        request1.setTitle(title);
	        request1.setDescription(description);
	        request1.setCategoryId(categoryId);
	        request1.setUserId(userId);
	        request1.setAmount(amount);

	        RequestService requestService = new RequestService();

	        requestService.createRequest(request1);
	        
	        response.sendRedirect("list_all_request");
	    } catch (Exception e) {
	        e.printStackTrace(); 
	        out.println(e.getMessage());
	    }
	}


}










