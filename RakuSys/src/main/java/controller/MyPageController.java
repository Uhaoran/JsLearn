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
import entity.UserInfoEntity;
import service.UserInfoService;

/**
 * Servlet implementation class CreateUser
 */
@WebServlet("/myPage")
public class MyPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyPageController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());

		UserInfoService userInfoService = new UserInfoService();
		UserInfoDto userInfoDto = new UserInfoDto();
		UserInfoEntity userInfoEntity=new UserInfoEntity();
		
		
	
		
		userInfoEntity.setEmail(userInfoDto.getEmail());
		userInfoEntity.setUserId(userInfoDto.getUserId());
		userInfoEntity.setPassword(userInfoDto.getPassword());
		userInfoEntity.setUserName(userInfoDto.getUserName());
		userInfoEntity.setNameKana(userInfoDto.getNameKana());

		
		userInfoService.createUser(userInfoDto);
		request.setAttribute("userInfoDto", userInfoDto);

		ServletContext sc = this.getServletContext();

		RequestDispatcher rd = sc.getRequestDispatcher("/RegistrationCompletionScreen.jsp");

		rd.forward(request, response);

	}

}
