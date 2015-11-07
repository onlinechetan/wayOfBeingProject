/**
 * 
 */
package com.wayofbeing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author SarafC
 *
 */
@Controller
public class WayOfBeingHelloWorld {
	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
		
		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Way of Being using Spring MVC</h3>This message is coming from WayOfBeingHelloWorld.java **********</div><br><br>";
		return new ModelAndView("welcome", "message", message);
//return new ModelAndView("redirect:/survey.jsp");
	}
}