package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Query;
import com.klef.jfsd.springboot.model.ReplyQuery;
import com.klef.jfsd.springboot.repository.ContentRepository;
import com.klef.jfsd.springboot.repository.FarmerRepository;
import com.klef.jfsd.springboot.repository.ProductRepository;
import com.klef.jfsd.springboot.repository.QueryrRepository;
import com.klef.jfsd.springboot.repository.ReplyQueryRepository;

@Service
public class FarmerServiceImpl implements FarmerService {
    @Autowired
    private FarmerRepository farmerRepository;

    @Autowired
    private ProductRepository productRepository;
    @Autowired
    
    private ContentRepository contentRepository;
    @Autowired
    private QueryrRepository queryRepository;
    @Autowired
    private ReplyQueryRepository replyQueryRepository;

    @Override
    public String FarmerRegistration(Farmer farmer) {
        farmerRepository.save(farmer);
        return "Farmer Registered Successfully";
    }

    @Override
    public Farmer checkFarmerLogin(String email, String password) {
        return farmerRepository.checkFarmerLogin(email, password);
    }

    @Override
    public String updateFarmer(Farmer farmer) {
        Farmer existingFarmer = farmerRepository.findById(farmer.getId()).orElse(null);
        if (existingFarmer != null) {
            existingFarmer.setName(farmer.getName());
            existingFarmer.setGender(farmer.getGender());
            existingFarmer.setContactno(farmer.getContactno());
            existingFarmer.setDateofbirth(farmer.getDateofbirth());
            existingFarmer.setPassword(farmer.getPassword());
            existingFarmer.setCropType(farmer.getCropType());
            existingFarmer.setNoOfAcres(farmer.getNoOfAcres());
            existingFarmer.setLocation(farmer.getLocation());
            farmerRepository.save(existingFarmer);
        }
        return "Farmer Profile Updated Successfully";
    }

    @Override
    public List<Product> ViewAllPRoducts() {
        return productRepository.findAll();
    }

    @Override
    public Product displayProductByid(int pid) {
        return productRepository.findById(pid).orElse(null);
    }
    
    @Override
    public Farmer findFarmerByEmail(String email) {
    	return farmerRepository.findByEmail(email);
    }

	@Override
	public List<Content> ViewAllContent() {
		return contentRepository.findAll();
	}

	@Override
	public Content displayContents(int cid) {
		return contentRepository.findById(cid).get();
	}

	 @Override
	    public String addQuery(Query query) {
	        queryRepository.save(query);
	        return "Query Added Successfully";
	    }

	@Override
	public List<ReplyQuery> ViewAllReplyQueries() {
		return replyQueryRepository.findAll();
	}
	
	
}
