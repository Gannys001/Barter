package servlets;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import helpers.Util;
import model.Item;

@WebServlet("/DisplayInventory")
public class DisplayInventory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// this should be obtained from session 
		int userId = 1;
		
		Util util = new Util();
		ArrayList<Item> items = util.getItemsByUserId(userId);
		
		request.setAttribute("items", items);

    	String pageTo = "/inventory.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pageTo);
		dispatcher.forward(request, response);
	}

}
