package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.UserInfoDto;
import service.UserInfoService;

/**
 * Servlet implementation class CreatePersonalInfoController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String view = "/Login.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		UserInfoService userInfoService = new UserInfoService();

		String userId = request.getParameter("u");
		String password = request.getParameter("p");
		UserInfoDto userInfoDto = userInfoService.login(userId, password);

		if (userInfoDto != null) {

			request.setAttribute("email", userInfoDto.getEmail());
			request.setAttribute("userId", userInfoDto.getUserId());
			request.setAttribute("password", userInfoDto.getPassword());
			request.setAttribute("userName", userInfoDto.getUserName());
			request.setAttribute("nameKana", userInfoDto.getNameKana());
			request.setAttribute("userInfo", userInfoDto);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/MyPage.jsp");
			dispatcher.forward(request, response);
		} else {

			request.setAttribute("error", "ユーザー名またはパスワードが間違っています");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
		}

	}
}