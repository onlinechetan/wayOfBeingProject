/**
 * 
 */
package com.wayofbeing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Class renders the survey questions to the user.	
 * @author SarafC
 *
 */
@Controller
public class Survey {
	@RequestMapping("/welcome")
	public ModelAndView renderSurvey() {
		
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Way of Being ***********</h3></div><br>";
		return new ModelAndView("welcome", "message", message);
	}
}