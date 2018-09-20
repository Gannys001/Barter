package servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import helpers.Util;
import model.User;

@WebServlet("/UserInfoServlet")
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = "";
		int userId = -1;
		Util util = new Util();
		User user = null;
		
    	if (request.getParameter("username") != null) {
    		username = request.getParameter("username");
    		user = util.getUserByUsername(username);
    	}
    	else if (request.getParameter("userId") != null) {
    		userId = Integer.parseInt(request.getParameter("userId"));
    		user = util.getUserByUserId(userId);
    	}
		
		Gson gson = new GsonBuilder().create();
		PrintWriter pw = response.getWriter();
		gson.toJson(user, pw);

		util.close();
		pw.flush();
		pw.close();
	}

}
