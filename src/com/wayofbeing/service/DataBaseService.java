package com.wayofbeing.service;

import java.util.List;
import java.util.Map;

import com.wayofbeing.survey.SurveyBean;

public interface DataBaseService {

    List<SurveyBean> fetchReport(Map<String, String> reportCriteria);

    void insertSurvey(SurveyBean survey);

}