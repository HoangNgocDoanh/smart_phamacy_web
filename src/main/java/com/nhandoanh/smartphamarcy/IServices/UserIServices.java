package com.nhandoanh.smartphamarcy.IServices;

import com.nhandoanh.smartphamarcy.models.Customer;
import com.nhandoanh.smartphamarcy.models.Shipping;
import com.nhandoanh.smartphamarcy.models.User;
import com.nhandoanh.smartphamarcy.models.UserList;
import java.util.List;

public interface UserIServices {
    public User Login(String email, String password);
    public List<UserList> ByList();
    public boolean Create(Customer cinfo);
    public boolean Delete(String id, String uid);
}
