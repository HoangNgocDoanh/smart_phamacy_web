/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.respository;

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
public class ProductRespository {
    private final String SQL_EDIT="{call product_product_EditById(?,?,?,?,?,?,?,?)}",
                            SQL_READALL = "{call product_product_GetAllProduct()}",
                            SQL_DELETEBYID = "{call product_product_DeleteById(?,?)}",
                            SQL_CREATE = "{call product_product_Create(?,?,?,?,?,?,?)}",
                            SQL_BYID = "{call product_product_ById(?)}";
    
    DBConnector dbcon = new DBConnector();
    Connection conn = dbcon.getConn();
    CallableStatement prs;
    
    public List<Product> readAll(){
       try {
           List<Product> list = new ArrayList<>();
           prs = conn.prepareCall(SQL_READALL);
           prs.execute();
           ResultSet res = prs.getResultSet();
           while (res.next()){
                Product bo = new Product(res.getInt("pid"),res.getString("Category_name"),res.getString("productDescription"), res.getString("manufactorer_name"), 
                                    res.getString("productName"), res.getDouble("productPrice"), 
                                        res.getString("unitStock"), res.getString("productImage"));
                list.add(bo);
           }
           System.out.print(list);
           return list;
       } catch (SQLException ex) {
           ex.printStackTrace();
       }
       return null;
    }
    
    public Product product_product_ById(String id){
        Product product = new Product();
        try {
           prs = conn.prepareCall(SQL_BYID,ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,id);
           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
                product = new Product(res.getInt("pid"),res.getString("Category_name"), 
                        res.getString("productDescription"), res.getString("manufactorer_name"), res.getString("productName"),
                        res.getDouble("productPrice"),res.getString("unitStock"),res.getString("productImage"));
           }
           System.out.print(res.getString("pid"));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
       return product;
    }
    
    public boolean product_product_EditById(Product prod, String uid){
        try {
            prs = conn.prepareCall(SQL_EDIT,ResultSet.TYPE_SCROLL_SENSITIVE, 
                         ResultSet.CONCUR_UPDATABLE);
            prs.setString(1,String.valueOf(prod.getProductId()));
            prs.setString(2,prod.getProductCategory());
            prs.setString(3,prod.getProductDescription());
            prs.setString(4,prod.getProductManufacturer());
            prs.setString(5,prod.getProductName());
            prs.setString(6,String.valueOf(prod.getProductPrice()));
            prs.setString(7,String.valueOf(prod.getUnitStock()));
            prs.setString(8,uid);

            prs.execute();
            ResultSet res = prs.getResultSet();
            if (res.first()){
                return res.getInt(1) == 1 ? true : false;
            }
            //System.out.print(res.getString("pid"));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
       return false;
     } 
    
    public boolean product_product_DeleteById(String prodID, String uid){
       try {
           prs = conn.prepareCall(SQL_DELETEBYID,ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,prodID);
           prs.setString(2,uid);

           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
               return res.getInt(1) == 1 ? true : false;
           }
           //System.out.print(res.getString("pid"));
       } catch (SQLException ex) {
           ex.printStackTrace();
       }
      return false;
    } 
    
    public Integer product_product_Create(Product prod, String uid){
        try {
            prs = conn.prepareCall(SQL_CREATE,ResultSet.TYPE_SCROLL_SENSITIVE, 
                         ResultSet.CONCUR_UPDATABLE);
            prs.setString(1,prod.getProductDescription());
            prs.setString(2,prod.getProductName());
            prs.setString(3,prod.getProductCategory());
            prs.setString(4,prod.getProductManufacturer());
            prs.setString(5,String.valueOf(prod.getProductPrice()));
            prs.setString(6,String.valueOf(prod.getUnitStock()));
            prs.setString(7,uid);

            prs.execute();
            ResultSet res = prs.getResultSet();
            if (res.first()){
                return res.getInt(1);
            }
            //System.out.print(res.getString("pid"));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    } 

}
