package com.nhandoanh.smartphamarcy.respository;

import com.nhandoanh.smartphamarcy.models.Customer;
import com.nhandoanh.smartphamarcy.models.CustomerOrder;
import com.nhandoanh.smartphamarcy.models.Shipping;
import com.nhandoanh.smartphamarcy.utils.DBConnector;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class CustomerOrderRespository {
     private final String SQL_READALL = "{call res_order_GetById(?)}",
                            SQL_SUMMIT = "{call res_order_Summit(?,?,?,?,?)}";
    
    DBConnector dbcon = new DBConnector();
    Connection conn = dbcon.getConn();
    CallableStatement prs;
    
    public CustomerOrder readAll(String cartId){
        try {
            CustomerOrder list = new CustomerOrder();
            prs = conn.prepareCall(SQL_READALL,ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
            prs.setString(1,cartId);
            prs.execute();
            ResultSet res = prs.getResultSet();
            if (res.first()) {
                Shipping ship = new Shipping(String.valueOf(res.getInt("sid")),res.getString("address"),res.getString("city"),
                                        res.getString("state"),res.getString("zipcode"),res.getString("country"));
                Customer cus = new Customer(String.valueOf(res.getInt("cusId")),res.getString("fname"),res.getString("lname"),
                                        String.valueOf(res.getInt("customerPhone")),ship,null);
                list = new CustomerOrder("",null, cus, ship);
            };
            System.out.print(list);
            return list;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public boolean res_cart_Summit(String cartId, String product_id, String cart_item, String quantity, String uid){
        try {
              prs = conn.prepareCall(SQL_SUMMIT,ResultSet.TYPE_SCROLL_SENSITIVE, 
                          ResultSet.CONCUR_UPDATABLE);
              prs.setString(1,cartId);
              prs.setString(2,product_id);
              prs.setString(3,cart_item);
              prs.setString(4,quantity);
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
    
}
