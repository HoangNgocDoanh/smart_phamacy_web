/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.services;

import com.nhandoanh.smartphamarcy.models.Cart;
import com.nhandoanh.smartphamarcy.respository.CartRepository;
import com.nhandoanh.smartphamarcy.IServices.CartIServices;

/**
 *
 * @author ADMIN
 */
public class CartServices implements CartIServices {
    
    public Cart ById(String id) {
        return new CartRepository().res_cart_ById(id);
    };
    
    public Integer GetId(String uid) {
        return new CartRepository().res_cart_getId(uid);
    };
    
    public boolean RemoveCartItem(String id, String uid) {
        return new CartRepository().res_cart_removeCartItem(id, uid);
    };
    
    public boolean RemoveAllCartItem(String cartId, String uid) {
        return new CartRepository().res_cart_removeAllCartItem(cartId, uid);
    };
    
    public boolean CreateCartItem(String cartId, String quantity,String price,String product_id,String uid) {
        return new CartRepository().res_cartItem_Create(cartId, quantity, price, product_id, uid);
    };
    
    public boolean CreateCartOder(String cartId,String uid) {
        return new CartRepository().res_cart_CreateOder(cartId, uid);
    };
    
    
}
