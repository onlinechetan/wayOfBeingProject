package com.wayofbeing.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("in doPost");
//		doGet(request, response);
		//store the results and pass in the user result to display in the results page.
		Map<String, String[]> requestParams = request.getParameterMap();
		
		
		for(Iterator<String> paramIter =requestParams.keySet().iterator();paramIter.hasNext();) {
			String param = paramIter.next();
			System.out.println("Param iter is: " + param);
			System.out.println(" parameter name is: "+request.getParameter(param));
			System.out.println(" parameter is: "+request.getParameter(param));
		}
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}
}