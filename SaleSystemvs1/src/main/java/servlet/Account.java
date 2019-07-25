package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccountModel;

/**
 * Servlet implementation class Account
 */
@WebServlet("/account")
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acction = request.getParameter("acction");
		if (acction == null) {
			doGet_login(request, response);
		}
	}
	protected void doGet_login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.removeAttribute("mess");
		request.removeAttribute("style");
		request.getRequestDispatcher("account/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acction = request.getParameter("acction");
		if (acction == null) {
			doPost_Login(request, response);
		}
	}

	protected void doPost_Login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		AccountModel accountModel = new AccountModel();
		if (accountModel.Login(username, password) != null) {
			entitis.Account account = accountModel.Login(username, password);
			HttpSession session = request.getSession();
			session.setAttribute("account", account);
			if (account.getRole().getName().equalsIgnoreCase("admin")) {
				response.sendRedirect("admin");

			} else if (account.getRole().getName().equalsIgnoreCase("customer")) {
				if (accountModel.Check_Status(username)) {
					response.sendRedirect("customer");
				} else {

					request.setAttribute("username", username);
					request.setAttribute("mess", "tai khoan da bi khoa !");
					request.setAttribute("style", "border-color: red;");
					session.removeAttribute("account");
					request.getRequestDispatcher("account/login.jsp").forward(request, response);
				}

			} else if (account.getRole().getName().equalsIgnoreCase("employee")) {

				if (accountModel.Check_Status(username)) {
					response.sendRedirect("employee");
				} else {

					request.setAttribute("username", username);
					session.removeAttribute("account");
					request.setAttribute("style", "border-color: red;");
					request.setAttribute("mess", "tai khoan da bi khoa vui long lien he admin !");
					request.getRequestDispatcher("account/login.jsp").forward(request, response);
				}

			} else {
				request.setAttribute("username", username);
				request.setAttribute("mess", "Account is not authorized !");
				request.setAttribute("style", "border-color: red;");
				request.getRequestDispatcher("account/login.jsp").forward(request, response);
			}

		} else {
			request.setAttribute("username", username);
			request.setAttribute("mess", "Incorrect password or account !");
			request.setAttribute("style", "border-color: red;");
			request.getRequestDispatcher("account/login.jsp").forward(request, response);

		}

	}

}
