package com.wayofbeing.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Servlet implementation class WayOfBeingResults
 */
@WebServlet("/WayOfBeingResults")
public class WayOfBeingResults extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in doGet...");
		//store the result and display result in result.jsp
//		response.sendRedirect("/wayofbeing/result.jsp");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in doPost"); //updated2 successfully.
		//store the results and pass in the user result to display in the results page.
		Map<String, String[]> requestParams = request.getParameterMap();
		
		
		for(Iterator<String> paramIter =requestParams.keySet().iterator();paramIter.hasNext();) {
			String param = paramIter.next();
			System.out.println("Param iter is: " + param);
			System.out.println(" parameter name is: "+request.getParameter(param));
			System.out.println(" parameter is: "+request.getParameter(param));
			List<Object> userResult = new ArrayList<>();// ['Chetan',   80,  167,'color: #99FFCC']
//				userResult.put("fullName","Chetan Saraf");
//				userResult.put("X", 80);
//				userResult.put("Y", 167);
//				userResult.put("color", "color: #99FFCC");
				
				
				userResult.add("Chetan Saraf");
				userResult.add(26);
				userResult.add(31);
				userResult.add("color: #99FFCC");
				request.setAttribute("userResult",userResult);
			
		}
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}
}