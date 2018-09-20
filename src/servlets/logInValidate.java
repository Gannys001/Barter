package servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import helpers.Util;
import model.User;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;




@WebServlet("/logInValidate")
public class logInValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageTo= "";
		PrintWriter out = response.getWriter(); 
		String un=request.getParameter("username").trim();
		String pw=request.getParameter("password").trim();
			Util UtilObject= new Util();
//			DBUtil dbUtil = new DBUtil();
			User UserObject = UtilObject.getUserByUsername(un);

			if(UserObject== null)
			{
				//person isnt in system
				String message = "Please sign up first!";
				request.setAttribute("message", message);
				pageTo = "/logIn.html";
				System.out.println("not existent");
				
			}
			else if(UserObject.getUsername().equals(un)){
				if(!UserObject.getPassword().equals(pw)){
					//wrong password
					String message = "Please try again!";
					request.setAttribute("message", message);
					pageTo = "/logIn.html";
					System.out.println("wrong password");
				}
				else{
					HttpSession session = request.getSession();
					session.setAttribute("user", UserObject);					
					pageTo = "/itemResults.html";
					System.out.println("success");
				}
			}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pageTo);
		dispatcher.forward(request, response);
		
	}

}
