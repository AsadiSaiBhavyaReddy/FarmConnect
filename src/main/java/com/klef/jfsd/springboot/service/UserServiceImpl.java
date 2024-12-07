package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
   @Autowired
	private UserRepository userRepository;
	
	@Override
	public String UserRegistration(User user) {
		userRepository.save(user);
		return "User Registered Succesfully";
	}

	@Override
	public User checkUserLogin(String email, String password) {
		return userRepository.checkUserLogin(email, password);
	}

	@Override
	public String updateUser(User user) {
	    // Fetch the existing user by ID
	    User u = userRepository.findById(user.getId()).get();
	    
	    // Set the updated fields
	    u.setName(user.getName());
	    u.setGender(user.getGender());
	    u.setContact(user.getContact());
	    u.setDob(user.getDob());
	    
	    u.setPassword(user.getPassword());
	    
	    // Save the updated user back to the database
	    userRepository.save(u);
	    
	    // Return a success message
	    return "User Profile Updated Successfully";
	}

}
