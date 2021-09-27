/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.IServices;

import com.nhandoanh.smartphamarcy.models.Product;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface ProductIServices {
    public List<Product> GetProductList();
    public Product ById(String id);
    public boolean EditById(Product prod, String uid);
    public boolean DeleteById(String prodID, String uid);
    public Integer Create(Product prod, String uid);
}
