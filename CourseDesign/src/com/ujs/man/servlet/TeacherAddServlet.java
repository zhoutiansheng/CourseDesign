package com.ujs.man.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ujs.man.dao.Teacher_InfoDao;

/**
 * Servlet implementation class TeacherAddServlet
 */
@WebServlet("/TeacherAddServlet")
public class TeacherAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String no = request.getParameter("tea_no");
		String name = request.getParameter("tea_name");
		String pwd = request.getParameter("tea_pwd");
		Teacher_InfoDao dao =new Teacher_InfoDao();
		
		int row = 0;
		row = dao.insert(no, name, pwd);
		if(row>0)
		{
			response.sendRedirect("success.jsp");
		}
		else{
			response.sendRedirect("fail.jsp");
		}
	}

}
