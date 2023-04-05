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
@WebServlet("/changeUserInfo")
public class ChangeUserInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChangeUserInfoController() {
		super();

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

	
		String email = request.getParameter("email");
		String userId = request.getParameter("radio_mail");
		String password = request.getParameter("p");
		String userName = request.getParameter("lname") + request.getParameter("fname");
		String nameKana = request.getParameter("lname_kana") + request.getParameter("fname_kana");

		UserInfoService userInfoService = new UserInfoService();
		UserInfoDto userInfoDto = new UserInfoDto();

		userInfoDto.setEmail(email);
		userInfoDto.setUserId(userId);
		userInfoDto.setPassword(password);
		userInfoDto.setUserName(userName);
		userInfoDto.setNameKana(nameKana);

		userInfoService.changeUserInfo(userInfoDto);
		
		String view = "/UserList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
