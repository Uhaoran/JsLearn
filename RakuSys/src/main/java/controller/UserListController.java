package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
@WebServlet("/userList")
public class UserListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserListController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		UserInfoService userInfoService = new UserInfoService();
		List<UserInfoDto> userList = userInfoService.selectAll();

		request.setAttribute("userList", userList);

		String view = "/UserList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userName = request.getParameter("userName");
		String nameKana = request.getParameter("nameKana");

		UserInfoDto userInfoDto = new UserInfoDto();
		userInfoDto.setUserId(userId);
		userInfoDto.setEmail(email);
		userInfoDto.setPassword(password);
		userInfoDto.setUserName(userName);
		userInfoDto.setNameKana(nameKana);

		UserInfoService userInfoService = new UserInfoService();
		userInfoService.changeUserInfo(userInfoDto);
		
		ServletContext sc = this.getServletContext();

		RequestDispatcher rd = sc.getRequestDispatcher("/ChangeUserList.jsp");

		rd.forward(request, response);

	}

}
