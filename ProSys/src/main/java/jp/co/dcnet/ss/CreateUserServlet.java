package jp.co.dcnet.ss;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreateUserServlet
 */
@WebServlet("/CreateUserServlet")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	//request respinse重要、get post,parameterの活用
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 文字コードの指定
		request.setCharacterEncoding("utf-8");

		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("OKKKKKK-------------------");

		String userName = request.getParameter("userName");
		String birthday = request.getParameter("birthday");
		String tel = request.getParameter("tel");

		//String userName = (String) request.getAttribute("userName");

		System.out.println(userName);
		System.out.println(birthday);
		System.out.println(tel);

		String view = "/WEB-INF/Practise.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//String userName = (String) request.getAttribute("userName");
		String userName = request.getParameter("userName");
		String birthday = request.getParameter("birthday");
		String tel = request.getParameter("tel");
		
		request.setAttribute("userName", userName);
		request.setAttribute("birthday", birthday);
		request.setAttribute("tel", tel);
		
		ServletContext sc = this.getServletContext();

		 
		RequestDispatcher rd = sc.getRequestDispatcher("/WEB-INF/res.jsp");

		rd.forward(request, response);
	}
	
}
