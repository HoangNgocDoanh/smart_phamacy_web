/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.controller;

import com.nhandoanh.smartphamarcy.models.Product;
import com.nhandoanh.smartphamarcy.models.UserList;
import com.nhandoanh.smartphamarcy.services.ProductServices;
import com.nhandoanh.smartphamarcy.services.UserServices;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.nhandoanh.smartphamarcy.IServices.ProductIServices;
import com.nhandoanh.smartphamarcy.IServices.UserIServices;

/**
 *
 * @author ADMIN
 */
@Controller
public class AdminController {
    private UserIServices user = new UserServices();
    private ProductIServices prod = new ProductServices();

    
    @RequestMapping(value = "/admin/GetUserList", produces = "application/json; charset=UTF-8" ,method = RequestMethod.GET)
    public ModelAndView UsersPage() {
        UserIServices list = new UserServices();
        List<UserList> result = list.ByList();
        ModelAndView mav = new ModelAndView("UserList","users",result);
        return mav;
    }
    
    @RequestMapping(value = "/admin/user/delete/{Id}", method = RequestMethod.GET)
    public ModelAndView getCartItems(@PathVariable(value="Id")String Id, HttpSession session){
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        user.Delete(Id, uid);
        UserIServices list = new UserServices();
        List<UserList> resultquery = list.ByList();
        ModelAndView mav = new ModelAndView("UserList","users",resultquery);
        return mav;
    }
    
    @RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.GET)
    public ModelAndView addProductForm(Model model) {
        Product product = new Product();          
        model.addAttribute("productFormObj", product);
        return new ModelAndView("addProduct");
    }
    
    @RequestMapping(value = "/admin/product/editProduct/{productId}", method = RequestMethod.GET)
    public ModelAndView getEditForm(@PathVariable(value = "productId") String productId) {
        Product products = prod.ById(productId);
        return new ModelAndView("editProduct", "editProductObj", products);
    }

    @RequestMapping(value = "/admin/product/editProduct", method = RequestMethod.POST)
    public String editProductForm(@ModelAttribute(value = "editProductObj") Product product, HttpSession session) {
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        prod.EditById(product, uid);
        return "redirect:/getAllProducts";
    }
    
     @RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.POST)
    public String addProduct(@Valid @ModelAttribute(value = "productFormObj") Product prods, BindingResult result,
            HttpSession session, HttpServletRequest request) {
        // Binding Result is used if the form that has any error then it will
        // redirect to the same page without performing any functions
        if (result.hasErrors())
                return "addProduct";
        
        String contextPath = request.getServletContext().getRealPath("/resource/images/products/");
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        Integer id = prod.Create(prods, uid);
        
        MultipartFile image = prods.getProductImgFile();
        if (image != null && !image.isEmpty()) {
            Path path = Paths.get(contextPath + id + ".jpg");

            try {
                    image.transferTo(new File(path.toString()));
            } catch (IllegalStateException e) {
                    e.printStackTrace();
            } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
            }
        }
        return "redirect:/getAllProducts";
    }
    
    @RequestMapping("/admin/delete/{productId}")
    public String deleteProduct(@PathVariable(value = "productId") String productId, HttpServletRequest request, HttpSession session) {

        String contextPath = request.getContextPath();
        String uid = String.valueOf((Integer)session.getAttribute("uid"));
        // Here the Path class is used to refer the path of the file

        Path path = Paths.get(contextPath + "/resource/images/products/"
                        + productId + ".jpg");

        if (Files.exists(path)) {
            try {
                    Files.delete(path);
            } catch (IOException e) {
                    e.printStackTrace();
            }
        }

        prod.DeleteById(productId, uid);
        return "redirect:/getAllProducts";
    }
}
