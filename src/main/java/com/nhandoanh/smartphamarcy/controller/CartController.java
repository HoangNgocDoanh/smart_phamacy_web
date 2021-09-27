/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.controller;

import com.nhandoanh.smartphamarcy.models.Cart;
import com.nhandoanh.smartphamarcy.models.Product;
import com.nhandoanh.smartphamarcy.services.CartServices;
import com.nhandoanh.smartphamarcy.services.ProductServices;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;
import com.nhandoanh.smartphamarcy.IServices.CartIServices;
import com.nhandoanh.smartphamarcy.IServices.ProductIServices;

/**
 *
 * @author ADMIN
 */
@Controller
public class CartController {
    
    private CartIServices cart = new CartServices();
    private ProductIServices product = new ProductServices();

    
    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public ModelAndView mycartPage() {
       ModelAndView mav = new ModelAndView("cart");
       return mav;
    }
    
    @RequestMapping(value = "/cart/getCartById", method = RequestMethod.GET)
    public ModelAndView getCartId(HttpSession session){
        
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        
        Integer result = cart.GetId(uid);
       
        ModelAndView mav = new ModelAndView("cart", "cartId", result);
        return mav;
    }
	
    @RequestMapping(value = "/cart/getCart/{cartId}", produces = "application/json; charset=UTF-8", method = RequestMethod.GET)
    public @ResponseBody Cart getCartItems(@PathVariable(value="cartId")String cartId){
        return cart.ById(cartId);
    }
    
    @RequestMapping("/cart/add/{productId}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addCartItem(@PathVariable(value = "productId") String productId, HttpSession session) {
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        Product prod = product.ById(productId);
        Integer cartId = cart.GetId(uid);
        Cart carts = cart.ById(String.valueOf(cartId));
        cart.CreateCartItem(String.valueOf(cartId),"1",String.valueOf(prod.getProductPrice()),String.valueOf(prod.getProductId()),uid);        
    }

    @RequestMapping("/cart/removeCartItem/{cartItemId}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeCartItem(@PathVariable(value = "cartItemId") String cartItemId, HttpSession session) {
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        cart.RemoveCartItem(cartItemId,uid);
    }

    @RequestMapping("/cart/removeAllItems/")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeAllCartItems(HttpSession session) {
        String uid = String.valueOf((Integer)session.getAttribute("uid"));   
        Integer result = cart.GetId(uid);
        cart.RemoveAllCartItem(String.valueOf(result),uid);
    }
    
    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") String cartId, HttpSession session) {

        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        cart.CreateCartOder(cartId, uid);
        return "redirect:/checkout/" + cartId;
    }
    
}
