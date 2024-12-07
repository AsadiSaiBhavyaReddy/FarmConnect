package com.klef.jfsd.springboot.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Expert;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.ExpertRepository;
import com.klef.jfsd.springboot.repository.FarmerRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private ExpertRepository expertRepository;

    @Autowired
    private AdminRepository adminRepository;
    @Autowired
    private FarmerRepository farmerRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private SellerRepository sellerRepository;
    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Expert> viewallExperts() {
        return expertRepository.findAll();
    }

    @Override
    public Admin CheckAdminLogin(String uname, String pwd) {
        return adminRepository.checkAdminLogin(uname, pwd);
    }

    @Override
    public long expertcount() {
        return expertRepository.count();
    }

    @Override
    public String deleteexpert(int id) {
        expertRepository.deleteById(id);
        return "Expert Deleted Successfully";
    }

	@Override
	public Expert displatExpertById(int id) {
		return expertRepository.findById(id).get();
	}

	@Override
	public List<Farmer> viewallFarmers() {
		return farmerRepository.findAll();
	}

	@Override
	public long farmercount() {
		return farmerRepository.count();
	}

	@Override
	public List<Expert> viewexpertrequests() {
		return expertRepository.findAll();
	}

	@Override
	public List<User> viewallUsers() {
		return userRepository.findAll();
	}

	@Override
	public long usercount() {
		return userRepository.count();
	}

	@Override
	public String deletefarmer(int id) {
		farmerRepository.deleteById(id);
        return "Delete Deleted Successfully";
	}

	@Override
	public String deleteuser(int id) {
		userRepository.deleteById(id);
		return "User Deleted Successfully";
	}

	@Override
	public List<Seller> viewallSellers() {
		return sellerRepository.findAll();
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
