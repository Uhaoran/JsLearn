package controllar;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.UserInfoService;

/**
 * Servlet implementation class CreateUser
 */
@WebServlet("/UserInfoConfirmtionController")
public class UserInfoConfirmtionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserInfoConfirmtionController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		response.getWriter().append("Served at: ").append(request.getContextPath());

		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		String userId = (String) session.getAttribute("userId");
		String password = (String) session.getAttribute("password");
		String userName = (String) session.getAttribute("userName");
		String nameKana = (String) session.getAttribute("nameKana");

		UserInfoService userInfoService = new UserInfoService();
		userInfoService.createUser(email, userId, password, userName, nameKana);

		ServletContext sc = this.getServletContext();

		RequestDispatcher rd = sc.getRequestDispatcher("/RegistrationCompletionScreen.jsp");

		rd.forward(request, response);

	}

}
