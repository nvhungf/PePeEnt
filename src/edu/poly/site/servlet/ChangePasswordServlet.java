package edu.poly.site.servlet;

import java.io.IOException;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.UserDao;
import edu.poly.domain.ChangePasswordForm;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePassword")
public class ChangePasswordServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = SessionUtils.geLoginedUsername(request);
		
		if(username == null) {
			request.getRequestDispatcher("/Login").forward(request, response);
			return;
		}
		request.setAttribute("username", username);
		
		
		
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_CHANGE_PASSWORD_PAGE);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username = SessionUtils.geLoginedUsername(request);
			ChangePasswordForm form = new ChangePasswordForm();
			BeanUtils.populate(form, request.getParameterMap());
			
			request.setAttribute("username", username);
			
			if(!form.getConfirmPassword().equals(form.getPassword())) {
				request.setAttribute("erorr", "new password and new cofirm password are not indentical");
			}else {
				UserDao dao = new UserDao();
				dao.changePassword(form.getUsername(), form.getCurrentPassword(), form.getPassword());
				request.setAttribute("message", "Password has been changed");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erorr", e.getMessage());
		}
		PageInfo.prepareAndForwardSite(request, response, PageType.SITE_CHANGE_PASSWORD_PAGE);
	}

}
