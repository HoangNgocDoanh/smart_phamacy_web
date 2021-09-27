/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.respository;

import com.nhandoanh.smartphamarcy.models.Cart;
import com.nhandoanh.smartphamarcy.models.CartItem;
import com.nhandoanh.smartphamarcy.models.Product;
import com.nhandoanh.smartphamarcy.utils.DBConnector;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CartRepository {
     private final String SQL_CREATE="{call res_cartitem_Create(?,?,?,?,?)}",
                            SQL_CREATEORDER="{call res_cart_CreateOrder(?,?)}",
                            SQL_GETID = "{call res_cart_getIdByUid(?)}",
                            SQL_DELETECARTITEM = "{call res_cart_DeleteCartItem(?,?)}",
                            SQL_DELETEALLCARTITEM = "{call res_cart_DeleteAllCartItem(?,?)}",
                            SQL_BYID = "{call res_cart_ById(?)}";
    
    DBConnector dbcon = new DBConnector();
    Connection conn = dbcon.getConn();
    CallableStatement prs;
    
    public Cart res_cart_ById(String id){
        Cart cart = new Cart();
        List<CartItem> cartItemList = new ArrayList<>();
        try {
           prs = conn.prepareCall(SQL_BYID,ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,id);
           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
                Product product = new Product(res.getInt("pid"),res.getString("Category_name"), 
                         res.getString("productDescription"), res.getString("manufactorer_name"), res.getString("productName"),
                         res.getDouble("productPrice"),res.getString("unitStock"),res.getString("productImage"));
                
                CartItem cartItem = new CartItem(res.getInt("id"),res.getInt("quality"), 
                                    res.getDouble("price"),product, null);
                
                cartItemList.add(cartItem);
                cart.setCartId(res.getInt("cid"));
                cart.setTotalPrice(res.getDouble("total_price"));
                
                while (res.next()) {    
                    product = new Product(res.getInt("pid"),res.getString("Category_name"), 
                        res.getString("productDescription"), res.getString("manufactorer_name"), res.getString("productName"),
                        res.getDouble("productPrice"),res.getString("unitStock"),res.getString("productImage"));
                
                    cartItem = new CartItem(res.getInt("id"),res.getInt("quality"), 
                                        res.getDouble("price"),product, null);
                    cartItemList.add(cartItem);
                }
                cart.setCartItem(cartItemList);
           }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return cart;
    }

    public Integer res_cart_getId(String uid){
      try {
            prs = conn.prepareCall(SQL_GETID,ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
            prs.setString(1,uid);
            prs.execute();
            ResultSet res = prs.getResultSet();
            if (res.first()){
                return res.getInt("cid");
            }
      } catch (SQLException ex) {
          ex.printStackTrace();
      }
      return null;
    }
    
    public boolean res_cart_removeCartItem(String id, String uid){
     try {
           prs = conn.prepareCall(SQL_DELETECARTITEM,ResultSet.TYPE_SCROLL_SENSITIVE, 
                       ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,id);
           prs.setString(2,uid);
           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
               return res.getInt(1) == 1 ? true : false;
           }
     } catch (SQLException ex) {
         ex.printStackTrace();
     }
     return false;
    }
    
    public boolean res_cart_removeAllCartItem(String CartId, String uid){
     try {
           prs = conn.prepareCall(SQL_DELETEALLCARTITEM,ResultSet.TYPE_SCROLL_SENSITIVE, 
                       ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,CartId);
           prs.setString(2,uid);
           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
               return res.getInt(1) == 1 ? true : false;
           }
     } catch (SQLException ex) {
         ex.printStackTrace();
     }
     return false;
    }
    
    public boolean res_cartItem_Create(String cartId, String quantity,String price,String product_id,String uid){
     try {
           prs = conn.prepareCall(SQL_CREATE,ResultSet.TYPE_SCROLL_SENSITIVE, 
                       ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,cartId);
           prs.setString(2,quantity);
           prs.setString(3,price);
           prs.setString(4,product_id);
           prs.setString(5,uid);
           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
               return res.getInt(1) == 1 ? true : false;
           }
     } catch (SQLException ex) {
         ex.printStackTrace();
     }
     return false;
    }
    
    public boolean res_cart_CreateOder(String cartId, String uid){
     try {
           prs = conn.prepareCall(SQL_CREATEORDER,ResultSet.TYPE_SCROLL_SENSITIVE, 
                       ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,cartId);
           prs.setString(2,uid);
           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
               return res.getInt(1) == 1 ? true : false;
           }
     } catch (SQLException ex) {
         ex.printStackTrace();
     }
     return false;
    }
}
