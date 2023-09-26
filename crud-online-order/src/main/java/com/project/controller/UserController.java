package com.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dto.UserDTO;
import com.project.service.UserService;
import com.project.service.impl.UserServiceImpl;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private UserService userService = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String method = request.getParameter("method");

//		if ("searchUser".equals(method)) {
//
//		}

		if (method != null) {
			if (method.equals("searchUser")) {
				System.out.println("searchUser block on server executed");
				searchUserToUpdate(request, response);
			}
			if (method.equals("updateUser")) {
				updateUserDetails(request, response);
			}
			if (method.equals("createUser")) {
				createUser(request, response);
			}
			if (method.equals("deleteUser")) {
				deleteUserByEmail(request, response);
			}
			if (method.equals("logout")) {
				HttpSession session = request.getSession(false);
				if (session != null) {
					session.invalidate();
				}
				response.sendRedirect("login.jsp");
			}
		}

	}

	private void deleteUserByEmail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		if (email != null) {
			boolean isUserDeleted = userService.deleteUser(email);
			if (isUserDeleted) {
				response.sendRedirect("deleteSuccess.jsp");
			} else {
				response.sendRedirect("deleteError.jsp");
			}
		}
	}

	private void searchUserToUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String emailid = request.getParameter("email");
		if (emailid != null) {
			UserDTO user = userService.searchUser(emailid);
			request.setAttribute("searched_user", user); // request scope to hold user data
			System.out.println("searched user: " + user + " in usercontroller.java");
			request.getRequestDispatcher("updateUser.jsp").forward(request, response);
		} else {
			System.out.println("404 email is not received on searchUserToUpdate() method");
		}
	}

	private void updateUserDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("city");

		UserDTO user = new UserDTO(name, email, password, address);
		boolean isUserUpdated = userService.updateUser(user);
		if (isUserUpdated == true) {
			response.sendRedirect("updateSuccess.jsp");
		} else {
			response.sendRedirect("updateError.jsp");
		}
	}

	private void createUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		String address = request.getParameter("city");

		UserDTO user = new UserDTO(name, email, password, address);
		userService = new UserServiceImpl();
		boolean isUserSaved = userService.saveUser(user);
		if (isUserSaved == true) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("error.jsp");
		}
	}

}
