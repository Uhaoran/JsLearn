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
		System.out.println(111111111);

		/*String email = request.getParameter("email");
		String email2 = request.getParameter("email2");
		String radio_mail = request.getParameter("radio_mail");
		String u = request.getParameter("u");
		String p = request.getParameter("p");
		String lname = request.getParameter("lname");
		String fname = request.getParameter("fname");
		String lname_kana = request.getParameter("lname_kana");
		String fname_kana = request.getParameter("fname_kana");
		*/
		System.out.println(222222);

		/*	System.out.println(email);
			System.out.println(email2);
			System.out.println(radio_mail);
			System.out.println(u);
			System.out.println(p);
			System.out.println(lname);
			System.out.println(fname);
			System.out.println(lname_kana);
			System.out.println(fname_kana);
		*/
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
		
		
		System.out.println(23333332);
		String email = request.getParameter("email");
		String email2 = request.getParameter("email2");
		String radio_mail = request.getParameter("radio_mail");
		String u = request.getParameter("u");
		String p = request.getParameter("p");
		String lname = request.getParameter("lname");
		String fname = request.getParameter("fname");
		String lname_kana = request.getParameter("lname_kana");
		String fname_kana = request.getParameter("fname_kana");
		
		System.out.println(13333331);
		request.setAttribute("email", email);
		request.setAttribute("email2", email2);
		request.setAttribute("radio_mail", radio_mail);
		request.setAttribute("u", u);
		request.setAttribute("p", p);
		request.setAttribute("lname", lname);
		request.setAttribute("fname", fname);
		request.setAttribute("lname_kana", lname_kana);
		request.setAttribute("fname_kana", fname_kana);
		System.out.println(33333333);
		//セッションの設定
		HttpSession session = request.getSession();
		String userId = radio_mail;
		String password = p;
		String userName = lname + fname;
		String nameKana = lname_kana + fname_kana;
		session.setAttribute("email", email);
		session.setAttribute("userId", userId);
		session.setAttribute("password", password);
		session.setAttribute("userName", userName);
		session.setAttribute("nameKana", nameKana);

		ServletContext sc = this.getServletContext();

		RequestDispatcher rd = sc.getRequestDispatcher("/Confirmtion.jsp");

		rd.forward(request, response);
	}

}
