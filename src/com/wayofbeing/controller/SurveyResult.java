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

import com.wayofbeing.service.DataBaseService;
import com.wayofbeing.survey.SurveyBean;

/**
 * Servlet implementation for calculating user survey result.
 */
@WebServlet("/WayOfBeingResults")
public class SurveyResult extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Process the request to get the choices selected by user along with rank. Add the even answers to calculate X axis (MOE) and odds to calculate Y
     * axis
     * 
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // store the results and pass in the user result to display in the results page.
        // persist the user result and return user bean.
        SurveyBean survery = new SurveyBean(request);

        Map<String, String[]> requestParams = request.getParameterMap();
        int moe = 0, moa = 0;
        for (Iterator<String> paramIter = requestParams.keySet().iterator(); paramIter.hasNext();) {
            String param = paramIter.next();
            System.out.println("Param iter is: " + param);
            System.out.println("Parameter name is: " + request.getParameter(param));
            try {
                int choice = Integer.parseInt(param);
                int rank = Integer.parseInt(request.getParameter(param));
                if (choice % 2 == 0) { // survey question ids are 1...30
                    moe += rank;
                } else {
                    moa += rank;
                }
            } catch (NumberFormatException nfe) {
                System.out.println("skip... not a survey question");
            }
        }

        System.out.println("X axis is: " + moe);
        System.out.println("Y axis is: " + moa);

        survery.setMOE(moe);
        survery.setMOA(moa);

        // push the Survey bean object to persist.
        DataBaseService.getService().insertSurvey(survery);
        List<Object> userResult = new ArrayList<>();
        userResult.add(survery.getEmailId());
        userResult.add(moe);
        userResult.add(moa);
        request.setAttribute("userResult", userResult);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}