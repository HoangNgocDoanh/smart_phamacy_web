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
public class CartItem implements Serializable {

    private Integer cartItemId;
    private int quality;
    private double price;
    private Product product;
    private Cart cart;
    
    public CartItem(Integer cartItemId, int quality, double price, Product product, Cart cart) {
        this.cartItemId = cartItemId;
        this.quality = quality;
        this.price = price;
        this.product = product;
        this.cart = cart;
    }

    public Integer getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(Integer cartItemId) {
        this.cartItemId = cartItemId;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }
    
}
