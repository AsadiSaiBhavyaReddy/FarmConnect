package com.klef.jfsd.springboot.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.ProductRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;

@Service
public class SellerServiceImpl implements SellerService {

    @Autowired
    private SellerRepository sellerRepository;

    @Autowired
    private ProductRepository productRepository;

    @Override
    public String sellerRegistration(Seller seller) {
        sellerRepository.save(seller);
        return "Seller Registered Successfully";
    }

    @Override
    public Seller checkSellerLogin(String email, String password) {
        return sellerRepository.checkSellerLogin(email, password);
    }

    @Override
    public String addProduct(Product product) {
        productRepository.save(product);
        return "Product Added Successfully";
    }

    @Override
    public List<Product> ViewAllPRoducts() {
        return productRepository.findAll();
    }

    @Override
    public Product displayProductByid(int pid) {
        return productRepository.findById(pid).get(); // Return null if not found
    }
}
