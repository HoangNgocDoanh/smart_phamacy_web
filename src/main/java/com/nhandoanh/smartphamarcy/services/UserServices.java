package com.nhandoanh.smartphamarcy.services;

import com.nhandoanh.smartphamarcy.models.Customer;
import com.nhandoanh.smartphamarcy.models.Shipping;
import com.nhandoanh.smartphamarcy.respository.UserRespository;
import com.nhandoanh.smartphamarcy.models.User;
import com.nhandoanh.smartphamarcy.models.UserList;
import java.util.List;
import com.nhandoanh.smartphamarcy.IServices.UserIServices;


public class UserServices implements UserIServices {
    public User Login(String email, String password) {
        return new UserRespository().res_users_Login(email, password);
    };
    
    public List<UserList> ByList() {
        return new UserRespository().res_users_ByList();
    };
    
    public boolean Create(Customer cinfo) {
        return new UserRespository().res_users_Create(cinfo);
    };
    
    public boolean Delete(String id, String uid) {
        return new UserRespository().res_user_Delete(id, uid);
    };
}
