package com.wayofbeing.survey;

import javax.servlet.http.HttpServletRequest;

/**
 * Information about the survey taker.
 * 
 * @author SarafC
 *
 */
public class SurveyBean {
    private Long id;
    private String emailId;
    private String orgId;
    private int numberOfYearsWorked; // in organization
    private String gender;
    private String ageGroup;
    private String education;
    private int MOA;
    private int MOE;

    // constructor to populate survey object
    public SurveyBean(HttpServletRequest request) {

        setEmailId(request.getParameter("email"));
        setOrgId(request.getParameter("orgId"));
        try {
            setNumberOfYearsWorked(Integer.valueOf(request.getParameter("yearsInOrg")));
        } catch (NumberFormatException nfe) {
            setNumberOfYearsWorked(0);
            System.out.println("Exception in getting number of years wroked: " + nfe);
        }
        setGender(request.getParameter("sex"));
        setAgeGroup(request.getParameter("ageGroup"));
        setEducation(request.getParameter("education"));
    }

    public int getMOA() {
        return MOA;
    }

    public void setMOA(int mOA) {
        MOA = mOA;
    }

    public int getMOE() {
        return MOE;
    }

    public void setMOE(int mOE) {
        MOE = mOE;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    enum AgeRange {
        Range1525, Range2635, Range3645, Range4655, Range5665, Range65Plus
    }

    public String getAgeGroup() {
        return ageGroup;
    }

    public void setAgeGroup(String ageGroup) {
        this.ageGroup = ageGroup;
    }

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    public int getNumberOfYearsWorked() {
        return numberOfYearsWorked;
    }

    public void setNumberOfYearsWorked(int numberOfYearsWorked) {
        this.numberOfYearsWorked = numberOfYearsWorked;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Long getId() {
        return id;
    }
}