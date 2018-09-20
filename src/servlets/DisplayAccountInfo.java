package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import helpers.DBUtil;
import model.User;


@WebServlet("/DisplayAccountInfo")
public class DisplayAccountInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// these should come from session
    	int userId = 12;
    	System.out.println("displaying user: " + userId);

    	DBUtil dbUtil = new DBUtil();
    	User user = dbUtil.getUserByUserId(userId);

    	String firstName = user.getFirstName();
    	String lastName = user.getLastName();
    	String email = user.getEmail();
    	String location = user.getLocation();
    	String username = user.getUsername();	// also to be displayed on the left
    	String imagePath = user.getProfileImage();
    	
    	request.setAttribute("firstName", firstName);
    	request.setAttribute("lastName", lastName);
    	request.setAttribute("email", email);
    	request.setAttribute("location", location);
    	request.setAttribute("username", username);
    	request.setAttribute("profileImage", imagePath);
    	
    	System.out.println(firstName + lastName + "---" + imagePath);
    	
    	String pageTo = "/accountInfo.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pageTo);
		dispatcher.forward(request, response);
    }

}