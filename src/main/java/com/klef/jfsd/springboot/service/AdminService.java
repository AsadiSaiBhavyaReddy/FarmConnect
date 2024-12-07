package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Expert;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.model.User;

public interface AdminService 
{
   public List<Expert> viewallExperts();
   public List<User> viewallUsers();
   public List<Farmer> viewallFarmers();
   public List<Seller> viewallSellers();
   public Admin CheckAdminLogin(String uname,String pwd);
   public long expertcount();
   public long farmercount();
   public long usercount();
   public String deleteexpert(int id);
   public String deletefarmer(int id);
   public String deleteuser(int id);
   public Expert displatExpertById(int id);
   public List<Expert> viewexpertrequests();
   public List<Product> ViewAllPRoducts();
   public Product displayProductByid(int pid );
}
