package servlets;

import java.io.File;
import java.io.IOException;
import java.rmi.dgc.Lease;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.GroupLayout.Alignment;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import helpers.DBUtil;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = "";
		String lastName = "";
		String email = "";
		String location = "";
		String username = "";
		String password = "";
		int userId = 0;
		FileItem imageItem = null;
		
		if (!ServletFileUpload.isMultipartContent(request)) {
            System.out.println("Error: form must be set as enctype=multipart/form-data");
            return;
        }
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
	    ServletFileUpload upload = new ServletFileUpload(factory);
	    
	    try {

			List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));
			for(FileItem item : items) {
				if(item.isFormField()) {
					String name = item.getFieldName();
					String value = item.getString();
					if(name.equals("firstName")) {
						firstName = value;
					} else if(name.equals("lastName")) {
						lastName = value;
					} else if(name.equals("email")) {
						email = value;
					} else if(name.equals("location")) {
						location = value;
					} else if(name.equals("username")) {
						username = value;
					} else if(name.equals("password")) {
						password = value;
					}
				    System.out.println(name + "---" + value);
				}
				else {
					imageItem = item;
				}
			}
			
			ServletContext context = getServletContext();
			String fullPath = context.getRealPath("/users");
			DBUtil dbUtil = new DBUtil();
			userId = dbUtil.addUser(firstName, lastName, email, "a", location, username, password);
			File uploadDir = new File(fullPath + "\\user_" + userId + ".png");
			imageItem.write(uploadDir);
			dbUtil.updateUserPicture(userId, "users\\user_" + userId + ".png");
			dbUtil.close();
			
	    } catch (FileUploadException e) {
			System.out.println("Upload fail: " + e.getMessage());
		} catch (Exception e) {
			System.out.println("exception: " + e.getMessage());
		}

		// for testing. it will direct to some other page with more parameters
		request.setAttribute("imagePath", "users\\user_" + userId + ".png");
		String pageTo = "/logIn.html";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pageTo);
		dispatcher.forward(request, response);
	}
}