package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("userreg")
    public ModelAndView userRegistrationPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userreg");
        return mv;
    }

    @GetMapping("userlogin")
    public ModelAndView userLoginPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userlogin");
        return mv;
    }

    @PostMapping("insertuser")
    public ModelAndView insertUser(HttpServletRequest request) {
        // Retrieve updated parameters from the form
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Create a new User object and set its fields
        User user = new User();
        user.setName(name);
        user.setGender(gender);
        user.setDob(dob);
        user.setContact(contact);
        user.setEmail(email);
        user.setPassword(password);

        // Call the service layer for registration logic
        String message = userService.UserRegistration(user);

        // Prepare the ModelAndView object to return the response
        ModelAndView mv = new ModelAndView();
        mv.setViewName("uregsuccess");
        mv.addObject("message", message);

        return mv;
    }

    @PostMapping("checkuserlogin")
    public ModelAndView checkUserLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String email = request.getParameter("uemail");
        String password = request.getParameter("upwd");

        User user = userService.checkUserLogin(email, password); // Corrected to use `User` entity
        if (user != null) {
        	 HttpSession session = request.getSession();
             session.setAttribute("user", user);
            mv.setViewName("userhome"); // Redirect to a User-specific home page
        } else {
            mv.setViewName("userlogin"); // Stay on the login page
            mv.addObject("message", "Login Failed! Please check your email and password.");
        }
        return mv;
    }
    @GetMapping("userhome")
    public ModelAndView userhome() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userhome");
      
       
        return mv;
    }
    @GetMapping("userprofile")
    public ModelAndView userprofile() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userprofile");
      
       
        return mv;
    }
    @GetMapping("userlogout")
    public ModelAndView userlogout() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("userlogin");
      
       
        return mv;
    }
    @GetMapping("updateuprofile")
    public ModelAndView updateuprofile()
    {
    	ModelAndView mv= new ModelAndView("updateuprofile");
    	
    	return mv;
    }
    @PostMapping("updateUser")
    public ModelAndView updateUser(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        // Retrieve parameters from the request
        int id = Integer.parseInt(request.getParameter("uid"));
        String name = request.getParameter("uname");
        String gender = request.getParameter("ugender");
        String dob = request.getParameter("udob");
        String contact = request.getParameter("ucontact");
        String password = request.getParameter("upwd");

        // Create a new User object and set the updated values
        User user = new User();
        user.setId(id);
        user.setName(name);
        user.setGender(gender);
        user.setContact(contact);
        user.setDob(dob);
        user.setPassword(password);

        // Call the service method to update the user
        userService.updateUser(user);

        // Set the view name after updating
        mv.setViewName("userlogin");
        return mv;
    }
    @GetMapping("about")
    public ModelAndView about() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("about");
        return mv;
    }
    @GetMapping("air")
    public ModelAndView air() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("air");
        return mv;
    }
    @GetMapping("gss")
    public ModelAndView gss() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("gss");
        return mv;
    }
    @GetMapping("mts")
    public ModelAndView mts() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("mts");
        return mv;
    }
    @GetMapping("tsd")
    public ModelAndView tsd() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("tsd");
        return mv;
    }
    @GetMapping("sof")
    public ModelAndView sof() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sof");
        return mv;
    }
    @GetMapping("hls")
    public ModelAndView hls() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("hls");
        return mv;
    }
    @GetMapping("pft")
    public ModelAndView pft() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pft");
        return mv;
    }
    @GetMapping("schemespart")
    public ModelAndView schemespart() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("schemespart");
        return mv;
    }

   
}
