package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Expert;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.ExpertService;
import com.klef.jfsd.springboot.service.FarmerService;
import com.klef.jfsd.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class AdminController 
{
    @Autowired
    private AdminService adminService;
    @Autowired
    private FarmerService farmerService;
    @Autowired
    private UserService userService;
    @Autowired
    private ExpertService expertService;

    @GetMapping("adminviewrequests")
    public ModelAndView adminviewrequests() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminviewrequests"); 
        return mv;
    }
    @GetMapping("adminlogin")
    public ModelAndView adminlogin() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin"); 
        return mv;
    }

    @GetMapping("adminhome")
    public ModelAndView adminhome() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminhome");
        long count=  adminService.expertcount();
        
        mv.addObject("count",count);
        long count1=adminService.farmercount();
        mv.addObject("count1",count1);
        long count2 = adminService.usercount();
        mv.addObject("count2",count2);
       
        return mv;
    }
   

    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request) 
    {
        ModelAndView mv = new ModelAndView();
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        Admin admin = adminService.CheckAdminLogin(auname, apwd);
        if (admin != null) 
        {
            mv.setViewName("adminhome");
          long count=  adminService.expertcount();
          mv.addObject("count",count);
          long count1=adminService.farmercount();
          mv.addObject("count1",count1);
          long count2 = adminService.usercount();
          mv.addObject("count2",count2);
        } 
        else 
        {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login Failed! Please check your username and password.");
        }
        return mv;
    }

    @GetMapping("viewallexperts")
    public ModelAndView viewallexperts() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallexperts");
        adminService.viewallExperts();
        List<Expert> experts=adminService.viewallExperts();
        mv.addObject("expertlist",experts);
        long count=  adminService.expertcount();
        mv.addObject("count",count);
        return mv;
    }
    @GetMapping("deleteexpert")
    public ModelAndView deleteexpert() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deleteexpert");
       
        List<Expert> experts=adminService.viewallExperts();
        mv.addObject("expertlist",experts);
        
        return mv;
    }
    @GetMapping("deletefarmer")
    public ModelAndView deletefarmer() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletefarmer");
       
        List<Farmer> farmer=adminService.viewallFarmers();
        mv.addObject("farmerlist",farmer);
        
        return mv;
    }
    @GetMapping("delete1")
    public String delete1(@RequestParam int id) {
        // Call the delete method from the service to delete the expert
        adminService.deletefarmer(id);

        // Redirect after deletion to the appropriate page (can redirect to the viewall experts page or any other page)
        return "redirect:/deletefarmer";
    }
    @GetMapping("deleteuser")
    public ModelAndView deleteuser() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("deleteuser");
       
        List<User> user=adminService.viewallUsers();
        mv.addObject("userlist",user);
        
        return mv;
    }
    @GetMapping("delete2")
    public String delete2(@RequestParam int id) {
        // Call the delete method from the service to delete the expert
        adminService.deleteuser(id);

        // Redirect after deletion to the appropriate page (can redirect to the viewall experts page or any other page)
        return "redirect:/deleteuser";
    }
    @GetMapping("delete")
    public String delete(@RequestParam int id) {
        // Call the delete method from the service to delete the expert
        adminService.deleteexpert(id);

        // Redirect after deletion to the appropriate page (can redirect to the viewall experts page or any other page)
        return "redirect:/deleteexpert";
    }
   
   
    @GetMapping("viewexpertbyid")
    public ModelAndView viewexpertbyid() 
    {
    	ModelAndView mv = new ModelAndView();
    	List<Expert> experts=adminService.viewallExperts();
        mv.addObject("expertlist",experts);
        
        mv.setViewName("viewexpertbyid");
       
        return mv;
    }
    @PostMapping("displayexpert")
    public ModelAndView displayexpert(HttpServletRequest request) 
    {
            int id=Integer.parseInt(request.getParameter("id"));  
            Expert expert =adminService.displatExpertById(id);
            ModelAndView mv=new ModelAndView("displayexpert");
            mv.addObject("c",expert);
            return mv;
    }
    
    @PostMapping("insertfarmer1")
    public ModelAndView insertFarmer1(HttpServletRequest request) 
    {
    	String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String contact = request.getParameter("fcontact");
        String dob = request.getParameter("fdob");
        String email = request.getParameter("femail");
        String password = request.getParameter("fpwd");
        String cropType = request.getParameter("fcrop");
        int noOfAcres = Integer.parseInt(request.getParameter("facres"));
        String location = request.getParameter("flocation");

        Farmer farmer = new Farmer();
        farmer.setName(name);
        farmer.setGender(gender);
        farmer.setContactno(contact);
        farmer.setDateofbirth(dob);
        farmer.setEmail(email);
        farmer.setPassword(password);
        farmer.setCropType(cropType);
        farmer.setNoOfAcres(noOfAcres);
        farmer.setLocation(location);

        String message = farmerService.FarmerRegistration(farmer);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        mv.addObject("message", message);

        return mv;
    }
    @GetMapping("farmerreg1")
    public ModelAndView farmerreg1() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerreg1");
        return mv;
    }
  
    
    @GetMapping("viewexpertequests")
    public ModelAndView viewexpertrequests()
    {
    	List<Expert> experts=adminService.viewexpertrequests();
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("adminviewrequests");
    	mv.addObject("experts",experts);
    	return mv;
    }
    @GetMapping("viewallfarmers")
    public ModelAndView viewallfarmers() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallfarmers");
        long count1=adminService.farmercount();
        mv.addObject("count1",count1);
       
        List<Farmer> farmers = adminService.viewallFarmers();
        mv.addObject("farmerlist", farmers); // Add farmers list to the model
        return mv;
    }

    @GetMapping("viewallusers")
    public ModelAndView viewallusers() 
    {
        ModelAndView mv = new ModelAndView();
        
        mv.setViewName("viewallusers");
       
        long count2 = adminService.usercount();
        mv.addObject("count2",count2);
        List<User> users = adminService.viewallUsers();
        mv.addObject("userlist", users);
        return mv;
    }
    @GetMapping("viewallproducts1")
    public ModelAndView viewallproducts1() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallproducts1"); // Ensure this matches the JSP file name (viewallproducts1.jsp)
        
        // Fetch the product list from the service layer
        List<Product> products = adminService.ViewAllPRoducts();
        
        // Add the product list to the model
        mv.addObject("productList", products); // Note the attribute name matches the JSP file (productList)
        
        return mv;
    }

    @GetMapping("displayprodimage1")
    public ResponseEntity<byte[]> displayprodimage1(@RequestParam int id) throws Exception {
        Product product = adminService.displayProductByid(id); 
        byte[] imageBytes = null;
        if (product.getImage() != null) {
            imageBytes = product.getImage().getBytes(1, (int) product.getImage().length());
        }
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
    }
    @GetMapping("emailForm")
    public ModelAndView emailForm() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("emailForm");
        return mv;
    }
    @GetMapping("emailResult")
    public ModelAndView emailResult() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("emailResult");
        return mv;
    }

    
}
