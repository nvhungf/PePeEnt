package edu.poly.site.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.EmailUtils;
import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.UserDao;
import edu.poly.domain.Email;
import edu.poly.model.User;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String emailAddress = request.getParameter("email");
			String username = request.getParameter("username");
			
			UserDao dao = new UserDao();
			User user = dao.findByUserIdAndEmail(username, emailAddress);
			
			if(user == null) {
				request.setAttribute("erorr", "User or email are incorrect");
			}else {
				Email email = new Email();
				email.setFrom("nvhungf88@gmail.com");
				email.setFromPassword("Thach ha");
				email.setTo(emailAddress);
				email.setSuject("Forgot Password Function");
				StringBuilder sb= new StringBuilder();
				sb.append("Dear").append(username).append("<br> ");
				sb.append("Your are used te forgot password function. <br>");
				sb.append("Your password is <br>").append(user.getPassword()).append("<br>");
				sb.append("Regard<br>");
				sb.append("Administrator");
				
				email.setContent(sb.toString());
				EmailUtils.send(email);
				
				request.setAttribute("message", "email send to the email Address. "
						+ "Please check and get your password ");
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			request.setAttribute("error", e.getMessage());
		}
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_FORGOT_PASSWORD_PAGE);
	}

}
