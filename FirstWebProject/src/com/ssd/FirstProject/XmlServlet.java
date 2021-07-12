package com.ssd.FirstProject;

import java.io.IOException;
import java.io.PrintWriter;


//import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/XmlServlet")
public class XmlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		System.out.println("Hello from XmlServlet's doGet method to console");

		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		out.println("<h2 align=\"center\">form details by GET method</h2><br/>");
		out.println("username : "+name+"<br/>password : "+password);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		System.out.println("Hello from XmlServlet's doPost method to console");

		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String prof = request.getParameter("prof");
		//String location = request.getParameter("location");
		String[] locations = request.getParameterValues("location");
		
		
		out.println("<h2 align=\"center\">form details by POST method</h2><br/>");
		out.println("username : "+name+"<br/>password : "+password+"<br/>Profession : "+prof);
		out.print("<br/>Your "+ locations.length +" locations are : ");
		for (String location : locations) {
			out.println(location);
			
		}
	}
}
