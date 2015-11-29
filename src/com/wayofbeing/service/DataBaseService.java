package com.wayofbeing.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.wayofbeing.survey.SurveyBean;

/**
 * Service class to handle persistence calls. The class is singleton to access jdbc service.
 * 
 * @author SarafC
 *
 */
public class DataBaseService {
    // JDBC driver name and database URL
    static final String DB_URL = "jdbc:oracle:thin:@stp3310019:1522:xe";// "jdbc:mysql://stp3310019/XE";

    // Database credentials
    private static final String USER = "wayofbeing";
    private static final String PASS = "abc123";

    private Connection conn;
    Statement stmt;
    static DataBaseService dbService;

    // create singleton instance of database service
    public static DataBaseService getService() {
        if (dbService == null) {
            dbService = new DataBaseService();
        }
        return dbService;
    }

    private DataBaseService() {
        // Open a connection
        System.out.println("Connecting to a selected database...");
        try {
            // Register JDBC driver
            // Class.forName("com.mysql.jdbc.Driver").newInstance();
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
        } catch (SQLException se) {// Handle errors for JDBC
            se.printStackTrace();
        } catch (ClassNotFoundException cnfe) {// Handle errors for Class.forName
            cnfe.printStackTrace();
        }
        System.out.println("Connected database successfully...");
    }

    /**
     * Insert survey record in database
     * 
     * @param survey
     */
    public void insertSurvey(SurveyBean survey) {
        if (survey != null) {
            try {
                // email, orgid, gender, yearsinorg, agegroup, education, moe, moa
                String sql = "INSERT INTO SURVEY_RESULTS (email, org_id, gender, years_in_org, age_group, education,moe_score,MOA_SCORE) values ('"
                        + survey.getEmailId() + "', '" + survey.getOrgId() + "', " + survey.getGender() + ", " + survey.getNumberOfYearsWorked()
                        + ", " + survey.getAgeGroup() + ", " + survey.getEducation() + ", " + survey.getMOE() + ", " + survey.getMOA() + ")";

                System.out.println("SQL statement is: " + sql);

                stmt.executeUpdate(sql);
                System.out.println("Inserted records into the table...");

            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
