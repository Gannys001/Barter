package servlets;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import helpers.Util;
import model.Item;

@WebServlet("/ItemResultsServlet")
public class ItemResultsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Util util = new Util();
		ArrayList<Item> items = util.getAllItems();
		
		Gson gson = new GsonBuilder().create();
		PrintWriter pw = response.getWriter();
		gson.toJson(items, pw);

		util.close();
		pw.flush();
		pw.close();
	}

}
