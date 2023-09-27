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
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	int requestId = Integer.parseInt(request.getParameter("id"));

        RequestService requestService = new RequestService();
        requestService.deleteRequest(requestId);

//        response.sendRedirect(request.getContextPath()+"/user_requests"); 
        response.getWriter().print("<script>alert('Request as been Deleted Successfully');");
		response.getWriter().print("window.location.href=\"" + request.getContextPath()+ "/MainPage\"");
		response.getWriter().print("</script>");
    }
}
