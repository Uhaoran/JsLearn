package controller;

import java.io.IOException;

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
@WebServlet("/changeMyPage")
public class ChangeMyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ChangeMyPageController() {
		super();

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

	
	
		
		String view = "/MyPage.jsp";
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

		String email = request.getParameter("email");
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		String userName = request.getParameter("userName");
		String nameKana = request.getParameter("nameKana");

		UserInfoService userInfoService = new UserInfoService();
		UserInfoDto userInfoDto = new UserInfoDto();

		userInfoDto.setEmail(email);
		userInfoDto.setUserId(userId);
		userInfoDto.setPassword(password);
		userInfoDto.setUserName(userName);
		userInfoDto.setNameKana(nameKana);

		userInfoService.changeUserInfo(userInfoDto);
		
		request.setAttribute("email", userInfoDto.getEmail());
		request.setAttribute("userId", userInfoDto.getUserId());
		request.setAttribute("password", userInfoDto.getPassword());
		request.setAttribute("userName", userInfoDto.getUserName());
		request.setAttribute("nameKana", userInfoDto.getNameKana());
		request.setAttribute("userInfo", userInfoDto);
		
		ServletContext sc = this.getServletContext();

		RequestDispatcher rd = sc.getRequestDispatcher("/Mypage.jsp");

		rd.forward(request, response);
	}

}
