
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ssd.beans.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId, password;
		userId = request.getParameter("userId");
		password = request.getParameter("password");

		LoginService loginService = new LoginService();
		boolean result = loginService.authenticate(userId, password);

		PrintWriter printWriter = response.getWriter();
		if (result) {

			User user = loginService.getUserDetails(userId);
			// request.getSession().setAttribute("user", user);
			// response.sendRedirect("success.jsp");

			request.setAttribute("user", user);
			RequestDispatcher dispacher = request.getRequestDispatcher("success.jsp");
			dispacher.forward(request, response);
			return;
		} else {
			// first way to control the flow from one servlet/JSP to another servlet/JSP
			// in this approach the new request and response object is created for every
			// request from one source to another source

			// response.sendRedirect("login.jsp");

			printWriter.println("<h1> Invalid UserId or Password</h1>");
			// second way to control the flow from one servlet/JSP to another servlet/JSP
			// in this approach the request and response object is persisted from one source
			// to another source
			request.getRequestDispatcher("/login.jsp").include(request, response);
			return;
		}

	}

}
