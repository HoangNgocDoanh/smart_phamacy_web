/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.IServices;

import com.nhandoanh.smartphamarcy.models.CustomerOrder;

/**
 *
 * @author ADMIN
 */
public interface OrderIServices {
    public CustomerOrder GetOrder(String cartId);
    public boolean Summit(CustomerOrder cus, String uid);
}
