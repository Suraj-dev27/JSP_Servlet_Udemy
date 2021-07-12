package com.ssd.FirstProject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SimpleServlet
 */
@WebServlet(urlPatterns = {"/SimpleServlet"}, initParams = {@WebInitParam(name = "defaultUser", value = "Suraj Dalvi")})
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		System.out.println("Hello from servlet's doGet method to console");

		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h2 align=\"center\">Hello from servlet's doGet method to webpage</h2><br/>");
		out.println("</body></html>");
		
		//this is the request object which gets values from url
		//for every request it gets new value
		//if we can't pass value then it will take null value
		String userName = request.getParameter("userName");
		
		//now we will create Session object to hold the request value throughout the session i.e. only for particular browser
		HttpSession session = request.getSession();
		//now we will create ServletContext object to hold the request value throughout the application i.e. for all browsers(users) accessing same servlet or application
		ServletContext context = request.getServletContext();
		if (userName != "" && userName != null) {			
			session.setAttribute("savedUserName", userName);
			context.setAttribute("savedUserName", userName);
		}
		out.println("Request parameter has userName as : "+userName);
		out.println("<br/>Session parameter has userName as : "+(String) session.getAttribute("savedUserName"));
		out.println("<br/>Context parameter has userName as : "+(String) context.getAttribute("savedUserName"));
	
		//in next line we are declaring default value for userName instead of defining explicitly like above
		//whenever servlet loads this default value will be assigned even if request and response parameters pass different value
		out.println("<br/>Init parameter has default userName as : " +getServletConfig().getInitParameter("defaultUser")); //this defaultUser is defined in annotation
	}

}
