package com.simplilearn.servlets.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.simplilearn.tables.*;

@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String btn = request.getParameter("action");
		PrintWriter out = response.getWriter();
		HttpSession se = request.getSession();
		System.out.println("Button : " + btn);
		
		if (btn.equals("Login")) {
			String email = request.getParameter("lemail");
			String password = request.getParameter("lpwd");
			Admin ur = new Admin();
			ur.setEmail(email);
			ur.setPassword(password);

				boolean checkPassword;
				Admin allDetails;
				try {
					checkPassword = Admindao.verifyUserPwd(email, password);
					allDetails = Admindao.getUsernameByEmail(email);
					if (checkPassword) {
						se.setAttribute("user", allDetails);
						request.getRequestDispatcher("signin.jsp").forward(request, response);
					} else
						out.println("incorrect!");
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}		

		}
	}

}
