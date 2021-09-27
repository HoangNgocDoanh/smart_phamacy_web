/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.controller;

import com.nhandoanh.smartphamarcy.models.CustomerOrder;
import com.nhandoanh.smartphamarcy.services.CartServices;
import com.nhandoanh.smartphamarcy.services.OrderServices;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.nhandoanh.smartphamarcy.IServices.CartIServices;
import com.nhandoanh.smartphamarcy.IServices.OrderIServices;

/**
 *
 * @author ADMIN
 */
@Controller
public class CheckoutController {
    
    private OrderIServices order = new OrderServices();
    private CartIServices cart = new CartServices();
 
    
    @RequestMapping( value= "/checkout/{cartId}", method = RequestMethod.GET)
    public ModelAndView checkoutId(@PathVariable(value = "cartId") String cartId, HttpSession session) {
        CustomerOrder customer = new CustomerOrder();
        customer = order.GetOrder(cartId);
        session.setAttribute("cartId", cartId);
        return new ModelAndView("collectShippingDetail", "customer", customer);
    }
    
    @RequestMapping( value= "/checkout/confirm", method = RequestMethod.POST)
    public ModelAndView confirmId(@ModelAttribute(value = "customer") CustomerOrder customer, HttpSession session) {
        String cartId = (String)session.getAttribute("cartId");
        customer.setCart(cart.ById(cartId));
        session.setAttribute("customer", customer);
        return new ModelAndView("orderConfirmation", "cusomter", customer);
    }
    
    @RequestMapping(value= "/checkout/thank", method = RequestMethod.POST)
    public ModelAndView thankId(HttpSession session) {
        CustomerOrder cus = (CustomerOrder)session.getAttribute("customer");
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        order.Summit(cus, uid);
        return new ModelAndView("thankCustomer");
    }
}
