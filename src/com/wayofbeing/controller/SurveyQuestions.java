/**
 * 
 */
package com.wayofbeing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 * Class renders the survey questions to the user.
 * 
 * @author SarafC
 *
 */
@Controller
@SessionAttributes
public class SurveyQuestions {
    @RequestMapping("/welcome")
    public ModelAndView renderSurvey() {
        String message = "<div style='text-align:center;'>" + "<h3>********** Way of Being ***********</h3></div>";
        return new ModelAndView("welcome", "message", message);
    }
}