package edu.poly.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.FavoriteDao;
import edu.poly.dao.VideoDao;
import edu.poly.domain.FavoriteReport;
import edu.poly.domain.FavoriteUserReport;
import edu.poly.model.Video;

/**
 * Servlet implementation class ReportsManagementSevlet
 */
@WebServlet("/ReportsManagementSevlet")
public class ReportsManagementSevlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		reportFavoriteByVideo(request, response);
		reportFavoriteUserByVideo(request, response);
		
		PageInfo.prepareAndForward(request, response, PageType.REPORT_MANAGEMENT_PAGE);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
protected void reportFavoriteByVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			FavoriteDao dao = new FavoriteDao();
			List<FavoriteReport> list = dao.reportFavoriteByVideos();
			
			request.setAttribute("favlist", list);
		} catch (Exception e) {
			request.setAttribute("erorr", "Erorr:" +e.getMessage());
		}
	}

protected void reportFavoriteUserByVideo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		String videoUserId = request.getParameter("videoUserId");
		VideoDao vdao = new VideoDao();
		List<Video> vlist = vdao.findAll();
		if(videoUserId == null && vlist.size()>0) {
			videoUserId = vlist.get(0).getVideoId();
		}
		
		FavoriteDao dao = new FavoriteDao();
		List<FavoriteUserReport> list = dao.reportFavoriteUserByVideo(videoUserId);
		request.setAttribute("videoUserId", videoUserId);
		request.setAttribute("vidList", vlist);
		
		
		request.setAttribute("favUser", list);
	} catch (Exception e) {
		request.setAttribute("erorr", "Erorr:" +e.getMessage());
	}
}
}
