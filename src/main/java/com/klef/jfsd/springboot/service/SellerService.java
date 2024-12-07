package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;

public interface SellerService {
	public String sellerRegistration(Seller seller);
	public Seller checkSellerLogin(String email,String password);
	public String addProduct(Product product);
	public List<Product> ViewAllPRoducts();
	public Product displayProductByid(int pid );
}
