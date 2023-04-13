package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class Signup extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String role = req.getParameter("role");
		if (role == null) {
			resp.getWriter().print("<h1 style='color:red'>Select Atleast one option</h1>");
			req.getRequestDispatcher("Signup.html").include(req, resp);
		} else {
			if (role.equals("Teacher")) {
				req.getRequestDispatcher("TeacherSignup.jsp").forward(req, resp);
			} else {
				req.getRequestDispatcher("StudentSignup.jsp").forward(req, resp);
			}
		}
	}
}
