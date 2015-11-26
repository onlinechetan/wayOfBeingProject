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

/**
 * Servlet implementation class WayOfBeingResults
 */
@WebServlet("/WayOfBeingResults")
public class WayOfBeingResults extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("in doGet...");
    }

    /**
     * Process the request to get the choices selected by user along with rank. Add the even answers to calculate X axis (MOE) and odds to calculate Y
     * axis
     * 
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // store the results and pass in the user result to display in the results page.
        Map<String, String[]> requestParams = request.getParameterMap();
        int x = 0, y = 0;
        for (Iterator<String> paramIter = requestParams.keySet().iterator(); paramIter.hasNext();) {
            String param = paramIter.next();
            System.out.println("Param iter is: " + param);
            System.out.println("Parameter name is: " + request.getParameter(param));
            int choice = Integer.parseInt(param);
            int rank = Integer.parseInt(request.getParameter(param));
            if (choice % 2 == 0) {
                x += rank;
            } else {
                y += rank;
            }
        }
        System.out.println("X axis is: " + x);// TODO: replace system out statement with loggers.
        System.out.println("Y axis is: " + y);

        List<Object> userResult = new ArrayList<>();
        userResult.add("");
        userResult.add(x);
        userResult.add(y);
        userResult.add("color: #99FFCC");
        request.setAttribute("userResult", userResult);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}