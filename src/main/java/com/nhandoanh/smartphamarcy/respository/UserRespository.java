/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.respository;

import com.nhandoanh.smartphamarcy.models.Customer;
import com.nhandoanh.smartphamarcy.models.User;
import com.nhandoanh.smartphamarcy.models.UserList;
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
public class UserRespository {
     private final String SQL_CREATE="{call res_users_Create(?,?,?,?,?,?,?,?,?,?,?)}",
                            SQL_LOGIN = "{call res_users_Login(?,?)}",
                            SQL_BYLIST = "{call res_users_ByList()}",
                            SQL_DELETE = "{call res_users_Delete(?,?)}";
    
    DBConnector dbcon = new DBConnector();
    Connection conn = dbcon.getConn();
    CallableStatement prs;
    
    public User res_users_Login(String email, String password){
        User user = new User();
        try {
           prs = conn.prepareCall(SQL_LOGIN,ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
           prs.setString(1,email);
           prs.setString(2,password);
           prs.execute();
           ResultSet res = prs.getResultSet();
           if (res.first()){
                user = new User(res.getInt("uid"),res.getString("emailId"), null, false,res.getString("role"));
           }
           System.out.print(res.getString("emailId"));
       } catch (SQLException ex) {
           ex.printStackTrace();
       }
       return user;
    }
    
    public boolean res_users_Create(Customer cinfo){
        try {
            prs = conn.prepareCall(SQL_CREATE,ResultSet.TYPE_SCROLL_SENSITIVE, 
                         ResultSet.CONCUR_UPDATABLE);
            prs.setString(1,cinfo.getUserInfo().getEmailId());
            prs.setString(2,cinfo.getUserInfo().getPassword());
            prs.setString(3,cinfo.getUserInfo().getRole());

            prs.setString(4,cinfo.getShippingInfo().getAddress());
            prs.setString(5,cinfo.getShippingInfo().getCity());
            prs.setString(6,cinfo.getShippingInfo().getState());
            prs.setString(7,cinfo.getShippingInfo().getZipcode());
            prs.setString(8,cinfo.getShippingInfo().getCountry());

            prs.setString(9,cinfo.getFirstName());
            prs.setString(10,cinfo.getLastName());
            prs.setString(11,cinfo.getCustomerPhone());
            prs.execute();
            ResultSet res = prs.getResultSet();
            if (res.first()){
                 return res.getBoolean(1);
            }
            System.out.print(res.getString("emailId"));
       } catch (SQLException ex) {
           ex.printStackTrace();
       }
       return false;
   }
    
    public List<UserList> res_users_ByList(){
        try {
           List<UserList> list = new ArrayList<>();
           prs = conn.prepareCall(SQL_BYLIST);
           prs.execute();
           ResultSet res = prs.getResultSet();
           while (res.next()){
                UserList user = new UserList(res.getInt("uid"),res.getString("emailId"), res.getString("password"), 
                        Boolean.parseBoolean(res.getString("enabled")),res.getString("role"),res.getString("fname")
                        ,res.getString("lname"),res.getString("customerPhone"),res.getString("address"),res.getString("city")
                        ,res.getString("state"),res.getString("country"));
                list.add(user);
           }
           System.out.print(list);
           return list;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
   }
    
    public boolean res_user_Delete(String id, String uid) {
        try {
            prs = conn.prepareCall(SQL_DELETE,ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
            prs.setString(1,id);
            prs.setString(2,uid);
            prs.execute();
            ResultSet res = prs.getResultSet();
            if (res.first()){
                return res.getInt(1) == 1 ? true : false;
            }   
            System.out.print( res.getInt(1));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    };
}
