package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.User;

public interface UserService 
{
   public String UserRegistration(User user);
   public User checkUserLogin(String email,String password);
   public String updateUser(User user);
}
