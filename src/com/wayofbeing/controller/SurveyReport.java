package com.wayofbeing.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SurveyReport
 */
@WebServlet("/WayOfBeingReport")
public class SurveyReport extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        System.out.println("in get of report");
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("in post of report");
        List<Object> report = new ArrayList<>();
        List<Object> survey = new ArrayList<>();
        survey.add("1");
        survey.add(10);
        survey.add(60);
        report.add(survey);

        // survey.clear();
        survey = new ArrayList<>();
        survey.add("3");
        survey.add(20);
        survey.add(5);
        report.add(survey);
        request.setAttribute("userResult", report);
        request.getRequestDispatcher("report.jsp").forward(request, response);
    }
}