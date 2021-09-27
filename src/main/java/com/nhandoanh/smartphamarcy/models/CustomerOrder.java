/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.models;

import java.io.Serializable;

/**
 *
 * @author ADMIN
 */
public class CustomerOrder implements Serializable {

    private String customerOrderId;	
    private Cart cart;	
    private Customer customer;
    private Shipping shippingInfo;
    
    public CustomerOrder(String customerOrderId, Cart cart, Customer customer, Shipping shippingInfo) {
        this.customerOrderId = customerOrderId;
        this.cart = cart;
        this.customer = customer;
        this.shippingInfo = shippingInfo;
    }

    public CustomerOrder() {
    }
    
    
    
    public String getCustomerOrderId() {
        return customerOrderId;
    }

    public void setCustomerOrderId(String customerOrderId) {
        this.customerOrderId = customerOrderId;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Shipping getShippingInfo() {
        return shippingInfo;
    }

    public void setShippingInfo(Shipping shippingInfo) {
        this.shippingInfo = shippingInfo;
    }
	
}
