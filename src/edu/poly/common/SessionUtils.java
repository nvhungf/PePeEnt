package edu.poly.common;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {
	public static void add(HttpServletRequest request, String name, Object value ) {
		HttpSession sesstion = request.getSession();
		sesstion.setAttribute(name, value);
	}
	
	public static Object get(ServletRequest request, String name) {
		HttpSession sesstion = ((HttpServletRequest) request).getSession();
		return sesstion.getAttribute(name);
	}
	
	
	public static void invalidate(HttpServletRequest request ) {
		HttpSession sesstion = request.getSession();
		sesstion.removeAttribute("username");
		sesstion.invalidate();
	}
	
	public static boolean isLogin(ServletRequest request) {
		return get(request, "username") != null;
		
	}
	public static String geLoginedUsername(HttpServletRequest request) {
		Object username = get(request , "username");
		return username == null? null: username.toString();
		
	}
}
