package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Query;
import com.klef.jfsd.springboot.model.ReplyQuery;
import com.klef.jfsd.springboot.service.FarmerService;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class FarmerController {

    @Autowired
    private FarmerService farmerService;
   
    

    @PostMapping("insertfarmer")
    public ModelAndView insertFarmer(HttpServletRequest request) {
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
        mv.setViewName("fregsuccess");
        mv.addObject("message", message);

        return mv;
    }

    @GetMapping("farmerreg")
    public ModelAndView farmerreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerreg");
        return mv;
    }

    @GetMapping("farmerlogin")
    public ModelAndView farmerlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerlogin");
        return mv;
    }

    @PostMapping("checkFarmerLogin")
    public ModelAndView checkFarmerLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String femail = request.getParameter("femail");
        String fpwd = request.getParameter("fpwd");

        Farmer farmer = farmerService.checkFarmerLogin(femail, fpwd);

        if (farmer != null) {
            HttpSession session = request.getSession();
            session.setAttribute("farmer", farmer);
            mv.setViewName("farmerhome");
        } else {
            mv.setViewName("farmerlogin");
            mv.addObject("message", "Login Failed! Please check your email and password.");
        }
        return mv;
    }

    @GetMapping("farmerhome")
    public ModelAndView farmerhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("farmerhome");
        return mv;
    }

    @GetMapping("farmerprofile")
    public ModelAndView farmerprofile(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        HttpSession session = request.getSession();
        Farmer farmer = (Farmer) session.getAttribute("farmer");

        if (farmer == null) {
            mv.setViewName("farmerlogin");
            mv.addObject("message", "You are not logged in! Please log in to view your profile.");
            return mv;
        }

        mv.setViewName("farmerprofile");
        mv.addObject("farmer", farmer);
        return mv;
    }

    @GetMapping("farmerlogout")
    public ModelAndView farmerlogout(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        HttpSession session = request.getSession();
        session.invalidate();

        mv.setViewName("farmerlogin");
        mv.addObject("message", "You have been logged out successfully.");
        return mv;
    }

    @GetMapping("updatefprofile")
    public ModelAndView updateprofile() {
        ModelAndView mv = new ModelAndView("updatefprofile");
        return mv;
    }

    @PostMapping("updateFarmer")
    public ModelAndView updateFarmer(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        int id = Integer.parseInt(request.getParameter("fid"));
        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String dob = request.getParameter("fdob");
        String cropType = request.getParameter("fcroptype");
        String contact = request.getParameter("fcontact");
        String password = request.getParameter("fpwd");
        int noOfAcres = Integer.parseInt(request.getParameter("fnoofacres"));
        String location = request.getParameter("flocation");

        Farmer farmer = new Farmer();
        farmer.setId(id);
        farmer.setName(name);
        farmer.setGender(gender);
        farmer.setContactno(contact);
        farmer.setDateofbirth(dob);
        farmer.setPassword(password);
        farmer.setCropType(cropType);
        farmer.setNoOfAcres(noOfAcres);
        farmer.setLocation(location);

        farmerService.updateFarmer(farmer);

        mv.setViewName("farmerlogin");
        return mv;
    }

    @GetMapping("viewallproducts2")
    public ModelAndView viewallproducts2() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallproducts2");

        List<Product> products = farmerService.ViewAllPRoducts();
        mv.addObject("productList", products);
        return mv;
    }

    @PostMapping("addToCart")
    public ModelAndView addToCart(@RequestParam int productId, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("redirect:/viewallproducts2");

        // Get product by ID
        Product product = farmerService.displayProductByid(productId);

        // Add product to cart in session
        HttpSession session = request.getSession();
        List<Product> cart = (List<Product>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }
        cart.add(product);
        session.setAttribute("cart", cart);

        mv.addObject("message", "Product added to cart!");
        return mv;
    }

    @GetMapping("viewCart")
    public ModelAndView viewCart(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewCart");

        // Retrieve cart items from session
        HttpSession session = request.getSession();
        List<Product> cart = (List<Product>) session.getAttribute("cart");
        mv.addObject("cartItems", cart);

        return mv;
    }

    @GetMapping("displayprodimage2")
    public ResponseEntity<byte[]> displayprodimage(@RequestParam int id) throws Exception {
        Product product = farmerService.displayProductByid(id);
        byte[] imageBytes = null;
        if (product.getImage() != null) {
            imageBytes = product.getImage().getBytes(1, (int) product.getImage().length());
        }
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
    }
    
    @PostMapping("forgotPassword")
    public ModelAndView forgotPassword(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String email = request.getParameter("email");

        // Find Farmer by email
        Farmer farmer = farmerService.findFarmerByEmail(email);
        if (farmer == null) {
            mv.setViewName("farmerlogin");
            mv.addObject("message", "Email not registered!");
            return mv;
        }

        // Generate a random password
        String newPassword = generateRandomPassword();
        farmer.setPassword(newPassword);

        // Update the password
        farmerService.updateFarmer(farmer);

        // Send success message
        mv.setViewName("farmerlogin");
        mv.addObject("message", "Password reset successfully. Your new password is: " + newPassword);
        return mv;
    }

    private String generateRandomPassword() {
        int length = 8;
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@#$%&*!";
        Random random = new Random();
        StringBuilder password = new StringBuilder();
        for (int i = 0; i < length; i++) {
            password.append(characters.charAt(random.nextInt(characters.length())));
        }
        return password.toString();
    }
    
    
    @GetMapping("viewallcontents1")
    public ModelAndView viewAllContents1() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallcontents1");

        try {
            List<Content> contentList = farmerService.ViewAllContent();
            mv.addObject("contentlist", contentList);
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("errorMessage", "Failed to fetch content: " + e.getMessage());
        }

        return mv;
    }

    @GetMapping("displayprodimage10")
    public ResponseEntity<byte[]> displayProdImage10(@RequestParam int id) {
        try {
            Content content = farmerService.displayContents(id);

            if (content != null && content.getImage() != null) {
                byte[] imageBytes = content.getImage().getBytes(1, (int) content.getImage().length());
                return ResponseEntity.ok()
                        .contentType(MediaType.IMAGE_JPEG)
                        .body(imageBytes);
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    
   

    

    @GetMapping("addquery")
    public ModelAndView addquery() {
        ModelAndView mv = new ModelAndView("addquery");
        return mv;
    }

    @PostMapping("submitQuery")
    public ModelAndView submitQuery(@RequestParam("name") String name, 
                                    @RequestParam("contactNo") String contactNo, 
                                    @RequestParam("query") String query) {

        // Create a new Query object and set the fields
        Query newQuery = new Query();
        newQuery.setName(name);
        newQuery.setContactNo(contactNo);
        newQuery.setQuery(query);

        // Call the service to add the query
        String message = farmerService.addQuery(newQuery);

        // Prepare ModelAndView to return a response
        ModelAndView mv = new ModelAndView("querysuccess");  // Replace "querysuccess" with your success page

        // Set a message to be displayed in the view
        if (message == null || message.isEmpty()) {
            message = "Query submitted successfully!";
        }
        mv.addObject("message", message);

        return mv;
    }
    @GetMapping("querysuccess")
    public ModelAndView querysuccess() {
        ModelAndView mv = new ModelAndView("querysuccess");
        return mv;
    }
    @GetMapping("viewallreplyqueries")
    public ModelAndView viewallreplyqueries() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallreplyqueries"); // Ensure this matches the correct JSP name
        List<ReplyQuery> replyquery = farmerService.ViewAllReplyQueries(); // This method fetches the reply queries
        mv.addObject("replyqueryList", replyquery); // Passing the list to JSP
        return mv;
    }


   
}
