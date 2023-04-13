package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDao;
import dao.TeacherDao;
import dto.Student;
import dto.Teacher;

@WebServlet("/login")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int empreg = Integer.parseInt(req.getParameter("regemp"));
		String password = req.getParameter("password");

		StudentDao studentDao = new StudentDao();
		TeacherDao teacherDao = new TeacherDao();

		RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");

		Teacher teacher = teacherDao.find(empreg);

		if (teacher == null) {
			Student student = studentDao.find(empreg);
			if (student == null) {
				resp.getWriter().print("<h1>Incorrect Register Number or Employee Id</h1>");
				dispatcher.include(req, resp);
			} else {
				if (student.getPassword().equals(password)) {
					req.getSession().setAttribute("student", student);
					resp.getWriter().print("<h1>Student Login Success</h1>");
					req.getRequestDispatcher("StudentHome.jsp").include(req, resp);
				} else {
					resp.getWriter().print("<h1>Incorrect Password</h1>");
					dispatcher.include(req, resp);
				}
			}
		} else {
			if (teacher.getPassword().equals(password)) {
				req.getSession().setAttribute("teacher", teacher);
				resp.getWriter().print("<h1>Teacher Login Success</h1>");
				req.getRequestDispatcher("TeacherHome.jsp").include(req, resp);
			} else {
				resp.getWriter().print("<h1>Incorrect Password</h1>");
				dispatcher.include(req, resp);
			}
		}
	}

}
