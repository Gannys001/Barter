package servlets;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.sun.org.apache.xerces.internal.impl.dv.xs.DecimalDV;

import helpers.DBUtil;

@WebServlet("/PostItem")
public class PostItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// will be obtained from session
		int userId = 1;
		
		String itemName = "";
		String description = "";
		int categoryId = 0;
		int itemId = 0;
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
					if (item.isFormField()) {
				      String name = item.getFieldName();//text1
				      String value = item.getString();
				      if(name.equals("itemName")) {
				    	itemName = value;
				      }else if (name.equals("description")) {
						description = value;
				      }else if(name.equals("category")) {
				    	  categoryId = value == null? 
				  				0 : Integer.parseInt(value);
				      }
				      
				      System.out.println(name + "---" + value);
				    }
					else {
						imageItem = item;
					}
				}
				
				ServletContext context = getServletContext();
				String fullPath = context.getRealPath("/items");

				DBUtil dbUtil = new DBUtil();
		        itemId = dbUtil.additem(userId, itemName, description, categoryId);
				// write the image with name item_itemId into items folder
				File uploadDir = new File(fullPath + "\\item_" + itemId + ".png");
				imageItem.write(uploadDir);
				// update the item with the image path
				dbUtil.updateItemPicture(itemId, "items\\item_" + itemId + ".png");
				dbUtil.close();
				
			} catch (FileUploadException e) {
				System.out.println("upload fail: " + e.getMessage());
			} catch (Exception exception) {
				exception.printStackTrace();
				System.out.println("exception: " + exception.getMessage());
			}
	        System.out.println("item_" + itemId + ".png");
		
	    // for testing. it will direct to some other page with more parameters
		request.setAttribute("imagePath", "items\\item_" + itemId + ".png");
		String pageTo = "/test.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(pageTo);
		dispatcher.forward(request, response);
		
	}
	

}
