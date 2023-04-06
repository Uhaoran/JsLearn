package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.UserInfoDto;
import service.UserInfoService;

/**
 * Servlet implementation class CreatePersonalInfoController
 */
@WebServlet("/addUser")
public class AddUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddUserController() {
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

		String view = "/addUser.jsp";
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
		String radio_mail = request.getParameter("radio_mail");
		String u=request.getParameter("u");
		String userId = "";
		if (radio_mail.equals("0")) {
		  userId = email;
		} else if (radio_mail.equals("1")) {
		  userId = u;
		}
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

		userInfoService.createUser(userInfoDto);

		//セッションの設定
		HttpSession session = request.getSession();

		session.setAttribute("userInfoDto", userInfoDto);

		ServletContext sc = this.getServletContext();

		RequestDispatcher rd = sc.getRequestDispatcher("/Confirmtion.jsp");

		rd.forward(request, response);
	}

}
