package com.nhandoanh.smartphamarcy.controller;

import com.nhandoanh.smartphamarcy.models.Customer;
import com.nhandoanh.smartphamarcy.models.Shipping;
import com.nhandoanh.smartphamarcy.models.User;
import com.nhandoanh.smartphamarcy.services.UserServices;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.nhandoanh.smartphamarcy.IServices.UserIServices;

@Controller
@ControllerAdvice
public class UserController {
    
    private UserIServices user = new UserServices();
            
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
       ModelAndView mav = new ModelAndView("login");
       return mav;
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginPageVerifying(@ModelAttribute(value = "username") String email,
            @ModelAttribute(value = "password") String password, HttpSession request) {
        
        User result = user.Login(email, password);
        if (result.getEmailId() != null) {
            request.setAttribute("user",result.getEmailId());
            request.setAttribute("role",result.getRole());
            request.setAttribute("uid",result.getUserId());
            ModelAndView mav = new ModelAndView("home");
            return mav;
        };
        ModelAndView mav = new ModelAndView("login");
        mav.addObject("invalid", "Invalid username and Password");
        return mav;
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logoutPage(HttpSession request) {
        ModelAndView mav = new ModelAndView("login");
        request.removeAttribute("user");
        request.removeAttribute("role");
        request.removeAttribute("uid");
        request.removeAttribute("cartId");
        
        mav.addObject("logout", "You have logged out successfully");
        return mav;
    }
    
     @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView registerPage() {
        Customer customer = new Customer();
        Shipping shippingInfo = new Shipping();
        User userInfo = new User();
        customer.setShippingInfo(shippingInfo);
        customer.setUserInfo(userInfo);
        return new ModelAndView("register", "CustomerInfo", customer);
    }
   
  // to insert the data
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView registerCustomer(@ModelAttribute("CustomerInfo") Customer customer,
                    BindingResult result) {
        if (result.hasErrors()) {
            ModelAndView mae = new ModelAndView("register");
            mae.addObject("error", "There is something wrong while registering your account! Please check the information again.");
            return mae;
        };
        Customer cus = (Customer)result.getTarget();
        cus.getUserInfo().setRole("ROLE_USER");
        boolean resultquery = user.Create(cus);
        ModelAndView mav = new ModelAndView("login");
        if (resultquery != false) mav.addObject("registrationSuccess", "Registered Successfully. Login using username and password");
        else mav.addObject("invalid", "Registered failed");
        return mav;
    }
}
