package com.wayofbeing.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
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
 * fetch all the survey records using database service.
 * Servlet implementation class SurveyReport
 */
@WebServlet("/WayOfBeingReport")
public class SurveyReport extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Retrieve all survey records for the selected criteria and
     * 
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> reportCriteria = new HashMap<String, String>();
        reportCriteria.put("email", request.getParameter("email"));
        reportCriteria.put("orgId", request.getParameter("orgId"));
        reportCriteria.put("yearsInOrg", request.getParameter("yearsInOrg"));
        reportCriteria.put("sex", request.getParameter("sex"));
        reportCriteria.put("ageGroup", request.getParameter("ageGroup"));
        reportCriteria.put("education", request.getParameter("education"));

        List<Object> report = new ArrayList<>();
        List<Object> survey = new ArrayList<>();
        List<SurveyBean> surveys = DataBaseService.getService().fetchReport(reportCriteria);
        for (SurveyBean surveyBean : surveys) {
            survey.add(Long.toString(surveyBean.getId()));
            survey.add(surveyBean.getMOA());
            survey.add(surveyBean.getMOE());
            report.add(survey);
        }

        /*
         * survey.add("1");
         * survey.add(10);
         * survey.add(60);
         * report.add(survey);
         * 
         * // survey.clear();
         * survey = new ArrayList<>();
         * survey.add("4");
         * survey.add(30);
         * survey.add(55);
         * report.add(survey);
         */

        request.setAttribute("userResult", report);
        request.getRequestDispatcher("report.jsp").forward(request, response);
    }
}