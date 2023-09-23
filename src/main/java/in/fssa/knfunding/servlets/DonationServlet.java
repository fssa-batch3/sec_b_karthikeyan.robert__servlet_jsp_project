package in.fssa.knfunding.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.knfunding.model.Donation;
import in.fssa.knfunding.model.Request;
import in.fssa.knfunding.model.User;
import in.fssa.knfunding.service.DonationService;

@WebServlet("/Donate")
public class DonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		if (session != null) {
			User user = (User) session.getAttribute("user");

			if (user != null) {
				int userId = user.getId();
				System.out.println(request.getAttribute("requestId"));
//				int requestId = Integer.parseInt((String) request.getAttribute("requestId"));
				String name = request.getParameter("donorName");
				String email = request.getParameter("email");
				int id = Integer.parseInt((String)request.getParameter("id"));
				System.out.println(id);
				String mobile_no = request.getParameter("mobile_no");
				int donation_amount = Integer.parseInt(request.getParameter("donation_amount"));

				Donation newDonation = new Donation();
				newDonation.setDonation_amount(donation_amount);
				newDonation.setDonor_name(name);
				newDonation.setEmail(email);
				newDonation.setMobile_no(Long.parseLong(mobile_no));
				newDonation.setRequest_id(id);
				newDonation.setUser_id(userId);

				LocalDate donationDate = LocalDate.now();
				newDonation.setDonation_date(donationDate);

				DonationService donationService = new DonationService();
				donationService.createDonation(newDonation);

				response.sendRedirect(request.getContextPath() + "/Main_page.jsp");
			} else {
				// Handle the case when 'user' or 'request1' is null
				// Redirect to a login page or display an error message
				response.sendRedirect(request.getContextPath() + "/login.jsp");
			}
		} else {
			// Handle the case when there's no active session
			// Redirect to a login page or display an error message
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		}
	}

}
