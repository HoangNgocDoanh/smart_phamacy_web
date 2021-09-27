/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.models;

import java.io.Serializable;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author ADMIN
 */
public class Product implements Serializable {

    private Integer productId;
    private String productCategory;
    private String productDescription;	
    private String productManufacturer;
    private String productName;
    private double productPrice;
    private String unitStock;
    private String productImage;
    private MultipartFile productImgFile;

    public Product() {
    }

    public Product(Integer productId, String productCategory, String productDescription, String productManufacturer, String productName, double productPrice, String unitStock, String productImage, MultipartFile productImgFile) {
        this.productId = productId;
        this.productCategory = productCategory;
        this.productDescription = productDescription;
        this.productManufacturer = productManufacturer;
        this.productName = productName;
        this.productPrice = productPrice;
        this.unitStock = unitStock;
        this.productImage = productImage;
        this.productImgFile = productImgFile;
    }

    public Product(Integer productId, String productCategory, String productDescription, String productManufacturer, String productName, double productPrice, String unitStock, String productImage) {
        this.productId = productId;
        this.productCategory = productCategory;
        this.productDescription = productDescription;
        this.productManufacturer = productManufacturer;
        this.productName = productName;
        this.productPrice = productPrice;
        this.unitStock = unitStock;
        this.productImage = productImage;
    }
    
    
    
    public MultipartFile getProductImgFile() {
        return productImgFile;
    }

    public void setProductImgFile(MultipartFile productImgFile) {
        this.productImgFile = productImgFile;
    }
    
     public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
    
    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getUnitStock() {
        return unitStock;
    }

    public void setUnitStock(String unitStock) {
        this.unitStock = unitStock;
    }
	
}
