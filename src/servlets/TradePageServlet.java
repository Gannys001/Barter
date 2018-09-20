package servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import helpers.DBUtil;
import helpers.Util;

/**
 * Servlet implementation class TradePageServlet
 */
@WebServlet("/TradePageServlet")
public class TradePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TradePageServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// these should come from the session
		int userID = 1;
		System.out.println("Trade Page for userID = "+userID);
		
		DBUtil dbUtil = new DBUtil();
		Util util = new Util();
		
		//extract list of all ongoing trades for the current user
		
		
		
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
