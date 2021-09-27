package com.nhandoanh.smartphamarcy.models;

import java.io.Serializable;

public class Customer implements Serializable {

    private String customerId;
    private String firstName;
    private String lastName;
    private String customerPhone;
    private Shipping shippingInfo;
    private User userInfo;

    public Customer(String customerId, String firstName, String lastName, String customerPhone, Shipping shippingInfo, User userInfo) {
        this.customerId = customerId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.customerPhone = customerPhone;
        this.shippingInfo = shippingInfo;
        this.userInfo = userInfo;
    }

    public Customer() {
    }

    
    
    public User getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(User userInfo) {
        this.userInfo = userInfo;
    }

    public Shipping getShippingInfo() {
        return shippingInfo;
    }

    public void setShippingInfo(Shipping shippingInfo) {
        this.shippingInfo = shippingInfo;
    }
   
    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }
}
