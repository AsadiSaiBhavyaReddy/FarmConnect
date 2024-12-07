package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Query;
import com.klef.jfsd.springboot.model.ReplyQuery;

public interface FarmerService {
   public String FarmerRegistration(Farmer farmer);
   public Farmer checkFarmerLogin(String email, String password);
   public String updateFarmer(Farmer farmer);
   public List<Product> ViewAllPRoducts();
   public Product displayProductByid(int pid);
   public Farmer findFarmerByEmail(String email);
   public List<Content> ViewAllContent();
   public Content displayContents(int cid );
   public String addQuery(Query query);
   public List<ReplyQuery> ViewAllReplyQueries();
}
