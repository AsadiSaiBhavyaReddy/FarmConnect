package com.klef.jfsd.springboot.controller;

import java.sql.Blob;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.service.SellerService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class SellerController {
    @Autowired
    private SellerService sellerService;

    @GetMapping("sellerreg")
    public ModelAndView sellerreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sellerreg");
        return mv;
    }

    @GetMapping("sellerlogin")
    public ModelAndView sellerlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sellerlogin");
        return mv;
    }

    @PostMapping("insertseller")
    public ModelAndView insertseller(HttpServletRequest request) {
        String name = request.getParameter("sname");
        String gender = request.getParameter("sgender");
        String dob = request.getParameter("sdob");
        String contact = request.getParameter("scontact");
        String email = request.getParameter("semail");
        String password = request.getParameter("spwd");
        String businessName = request.getParameter("sbusinessName");
        String productsType = request.getParameter("sproductsType");
        String address = request.getParameter("saddress");
        String registrationDate = request.getParameter("sregistration_date");

        Seller seller = new Seller();
        seller.setName(name);
        seller.setGender(gender);
        seller.setDateofbirth(dob);
        seller.setContactno(contact);
        seller.setEmail(email);
        seller.setPassword(password);
        seller.setBusinessName(businessName);
        seller.setProductTypes(productsType);
        seller.setAddress(address);
        seller.setRegistrationDate(registrationDate);

        String message = sellerService.sellerRegistration(seller);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("regssuccess");
        mv.addObject("message", message);
        return mv;
    }

    @PostMapping("checkSellerLogin")
    public ModelAndView checkSellerLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String semail = request.getParameter("semail");
        String spwd = request.getParameter("spwd");

        Seller seller = sellerService.checkSellerLogin(semail, spwd);

        if (seller != null) {
            HttpSession session = request.getSession();
            session.setAttribute("seller", seller); // Add seller to session
            mv.setViewName("sellerhome");
        } else {
            mv.setViewName("sellerlogin");
            mv.addObject("message", "Login Failed! Please check your email and password.");
        }
        return mv;
    }

    @GetMapping("/sellerhome")
    public String sellerHome(HttpSession session, Model model) {
        Seller seller = (Seller) session.getAttribute("seller");
        if (seller == null) {
            return "redirect:sellerlogin"; // Redirect to login if no seller in session
        }
        model.addAttribute("seller", seller);
        return "sellerhome"; // This will resolve to `sellerhome.jsp`
    }

    @GetMapping("addproduct")
    public String getMethodName() {
        return "addproduct";
    }

    @PostMapping("insertproduct")
    public ModelAndView insertproduct(HttpServletRequest request, @RequestParam("pimage") MultipartFile file) throws Exception {
        String name = request.getParameter("pname");
        String description = request.getParameter("pdescription");
        String costParam = request.getParameter("pcost");
        Double cost = (costParam != null && !costParam.isEmpty()) ? Double.valueOf(costParam) : 0.0; // Null check
        String productlink = request.getParameter("purl");

        byte[] bytes = file.getBytes();
        Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

        Product p = new Product();
        p.setName(name);
        p.setDescription(description);
        p.setCost(cost);
        p.setUrl(productlink);
        p.setImage(blob);

        String message = sellerService.addProduct(p);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("productsuccess");

        // Use the result message from the service or a default message
        if (message == null || message.isEmpty()) {
            message = "Product has been added successfully!";
        }

        mv.addObject("message", message);

        return mv;
    }
    @GetMapping("productsuccess")
    public ModelAndView productsuccess() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("productsuccess"); 
        return mv;
    }

    @GetMapping("viewallproducts")
    public ModelAndView viewallproducts() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallproducts"); // Ensure this matches the correct JSP name
        List<Product> products = sellerService.ViewAllPRoducts();
        mv.addObject("productList", products); // Use 'productList' to match the JSP reference
        return mv;
    }
    @GetMapping("displayprodimage")
    public ResponseEntity<byte[]> displayprodimage(@RequestParam int id) throws Exception {
        Product product = sellerService.displayProductByid(id); 
        byte[] imageBytes = null;
        if (product.getImage() != null) {
            imageBytes = product.getImage().getBytes(1, (int) product.getImage().length());
        }
        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
    }
    @GetMapping("sellerlogout")
    public ModelAndView farmerlogout(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        // Invalidate the session to log out the user
        HttpSession session = request.getSession();
        session.invalidate();
        
        mv.setViewName("sellerlogin");
        mv.addObject("message", "You have been logged out successfully.");
        return mv;
    }

   
    
    
}
