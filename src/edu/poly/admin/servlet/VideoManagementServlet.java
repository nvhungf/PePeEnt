package edu.poly.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.UploadUtils;
import edu.poly.dao.VideoDao;
import edu.poly.model.Video;

/**
 * Servlet implementation class VideoManagementServlet
 */
@WebServlet({ "/VideoManagement", "/VideoManagement/create",
		"/VideoManagement/update", "/VideoManagement/delete",
		"/VideoManagement/reset", "/VideoManagement/edit" })
@MultipartConfig
public class VideoManagementServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURI();
		if (url.contains("edit")) {
			edit(request, response);
			return;
		}
		if (url.contains("delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("reset")) {
			reset(request, response);
			return;
		}
		Video video = new Video();
		video.setPoster("../img/dsk.jpg");
		findAll(request, response);
		request.setAttribute("video", video);

		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}

	




	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = request.getRequestURI();

		if (url.contains("create")) {
			create(request, response);
			return;
		}
		if (url.contains("delete")) {
			delete(request, response);
			return;
		}
		if (url.contains("update")) {
			update(request, response);
			return;
		}
		if (url.contains("reset")) {
			reset(request, response);
			return;
		}

	}

	private void reset(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		video.setPoster("img/dsk.jpg");
		
		request.setAttribute("video", video);
		findAll(request, response);
		
		
		
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
		
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("videoId");
		if (id == null) {
			request.setAttribute("erorr", "Video id is required!!");
			PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
			return;
		}
		try {
			VideoDao dao = new VideoDao();
			Video video = dao.findById(id);
			
			if(video == null) {
				request.setAttribute("erorr", "Video id is not found!");
				PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
				return;
			}
			dao.delete(id);
			request.setAttribute("message", "Video is deleted");
			request.setAttribute("video", new Video());
			findAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();

			request.setAttribute("erorr", "Erorr" + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());
			
			VideoDao dao = new VideoDao();
			Video oldVideo = dao.findById(video.getVideoId());
				video.setPoster(oldVideo.getPoster());
			dao.update(video);
			request.setAttribute("video", video);
			request.setAttribute("message", "video is updated!");
			findAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();

			request.setAttribute("erorr", "Erorr" + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	
	private void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			VideoDao dao = new VideoDao();
			
			List<Video> list = dao.findAll();
			
			request.setAttribute("videos", list);
		} catch (Exception e) {
			e.printStackTrace();

			request.setAttribute("erorr", "Erorr" + e.getMessage());
		}
	}


	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("videoId");
		if (id == null) {
			request.setAttribute("erorr", "Video id is required!!");
			PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
			return;
		}
		try {
			VideoDao dao = new VideoDao();
			Video video = dao.findById(id);

			request.setAttribute("video", video);
			findAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();

			request.setAttribute("erorr", "Erorr" + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}

	private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Video video = new Video();
		try {
			BeanUtils.populate(video, request.getParameterMap());
			video.setPoster("uploads/");

			VideoDao dao = new VideoDao();
			dao.insert(video);
			request.setAttribute("video", video);
			request.setAttribute("message", "Video is inserted !!");
			findAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erorr", "Error: " + e.getMessage());
		}
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}

}
