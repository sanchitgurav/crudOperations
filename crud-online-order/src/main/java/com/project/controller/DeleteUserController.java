//package com.project.controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.project.dto.UserDTO;
//import com.project.service.UserService;
//import com.project.service.impl.UserServiceImpl;
//
///**
// * Servlet implementation class UserController
// */
//@WebServlet("/DeleteUserController")
//public class DeleteUserController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	private UserService userService;
//
//	@Override
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		doPost(request, response);
//	}
//
//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
////		String id = req.getParameter("id");
//		userService = new UserServiceImpl();
//		boolean isUserDeleted = userService.deleteUser(Integer.parseInt(req.getParameter("id")));
//		if (isUserDeleted == true) {
//			resp.sendRedirect("showUsers.jsp");
//		}
//	}
//
//}
