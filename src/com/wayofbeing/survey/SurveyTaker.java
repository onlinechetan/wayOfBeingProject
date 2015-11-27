package com.wayofbeing.survey;

/**
 * Information about the survey taker.
 * 
 * @author SarafC
 *
 */
public class SurveyTaker {

    private String ageGroup;
    private String orgId;
    private int numberOfYearsWorked; // in organization
    private String emailId;
    private String gender;

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
}