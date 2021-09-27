package com.nhandoanh.smartphamarcy.controller;
import com.nhandoanh.smartphamarcy.models.Contact;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
      
    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage() {         
        ModelAndView mav = new ModelAndView("home");
        return mav;
    }
    
    @RequestMapping(value = "/contactus", method = RequestMethod.GET)
    public ModelAndView contactPage() {
       Contact contactInfo = new Contact();
       ModelAndView mav = new ModelAndView("contactUs","contact",contactInfo);
       return mav;
    }
    
    @RequestMapping("/aboutus")
	public ModelAndView sayAbout() {
		return new ModelAndView("aboutUs");
	}
}
