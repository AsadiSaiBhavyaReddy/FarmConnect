package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Content;
import com.klef.jfsd.springboot.model.Expert;
import com.klef.jfsd.springboot.model.Farmer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Query;
import com.klef.jfsd.springboot.model.ReplyQuery;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.ExpertService;
import com.klef.jfsd.springboot.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ExpertController 
{
    @Autowired
    private ExpertService expertService;
    @Autowired
    private FarmerService farmerService;
    @Autowired
    private AdminService adminService;
    
    

    @GetMapping("/")
    public ModelAndView home() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("expertreg")
    public ModelAndView expertreg() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("expertreg");
        return mv;
    }
    @GetMapping("expertprofile")
    public ModelAndView expertprofile() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("expertprofile");
        return mv;
    }
    @GetMapping("experthome")
    public ModelAndView experthome() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("experthome");
        return mv;
    }

    @GetMapping("expertlogin")
    public ModelAndView expertlogin() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("expertlogin");
        return mv;
    }

    @PostMapping("insertexpert")
    public ModelAndView insertexpert(HttpServletRequest request) 
    {
        String name = request.getParameter("ename");
        String gender = request.getParameter("egender");
        String dob = request.getParameter("edob");
        String expertise = request.getParameter("eexp");
        String contact = request.getParameter("econtact");
        String email = request.getParameter("eemail");
        String password = request.getParameter("epwd");

        Expert expert = new Expert();
        expert.setName(name);
        expert.setGender(gender);
        expert.setDateofbirth(dob);
        expert.setExpertise(expertise);
        expert.setContactno(contact);
        expert.setEmail(email);
        expert.setPassword(password);

        String message = expertService.ExpertRegistration(expert);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        mv.addObject("message", message);

        return mv;
    }

    @PostMapping("checkexpertlogin")
    public ModelAndView checkexpertlogin(HttpServletRequest request) 
    {
        ModelAndView mv = new ModelAndView();
        String eemail = request.getParameter("eemail"); // Fixed typo here
        String epwd = request.getParameter("epwd");

        Expert expert = expertService.checkExpertLogin(eemail, epwd);
        if (expert != null) 
        {
        	HttpSession session=request.getSession();
        	session.setAttribute("expert", expert);
            mv.setViewName("experthome");
        } 
        else 
        {
            mv.setViewName("expertlogin");
            mv.addObject("message", "Login Failed! Please check your email and password.");
        }
        return mv;
    }
    @GetMapping("updateprofile")
    public ModelAndView updateprofile()
    {
    	ModelAndView mv= new ModelAndView("updateprofile");
    	
    	return mv;
    }
    @PostMapping("update")
    public ModelAndView update(HttpServletRequest request)
    {
    	ModelAndView mv=new ModelAndView();
    	 int id=Integer.parseInt(request.getParameter("eid"));
    	 String name = request.getParameter("ename");
         String gender = request.getParameter("egender");
         String dob = request.getParameter("edob");
         String expertise = request.getParameter("eexp");
         String contact = request.getParameter("econtact");
         
         String password = request.getParameter("epwd");

         Expert expert = new Expert();
         expert.setId(id);
         expert.setName(name);
         expert.setGender(gender);
         expert.setDateofbirth(dob);
         expert.setExpertise(expertise);
         expert.setContactno(contact);
        
         expert.setPassword(password);
         expertService.updateExpert(expert);
         mv.setViewName("expertlogin");
    	
    	return mv;
    }
    
    
    @GetMapping("expertlogout")
    public ModelAndView expertlogout() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("expertlogin");
        return mv;
    }
//    
//    @GetMapping("/viewrequests")
//    public ModelAndView viewRequests() {
//        List<Expert> unapprovedExperts = expertService.getUnapprovedExperts();
//        ModelAndView mv = new ModelAndView("adminviewrequests");
//        mv.addObject("experts", unapprovedExperts);
//        return mv;
//    }
    
	/*
	 * @GetMapping("viewallfarmers") public ModelAndView viewallfarmers() {
	 * ModelAndView mv = new ModelAndView(); mv.setViewName("viewallfarmers");
	 * List<Farmer> farmers = adminService.viewallFarmers();
	 * mv.addObject("farmerlist", farmers); // Add farmers list to the model return
	 * mv; }
	 */
    
    @GetMapping("addcontent")
    public ModelAndView addcontent() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addcontent");
        return mv;
    }
    @GetMapping("contentsuccess")
    public ModelAndView contentsuccess() 
    {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("contentsuccess"); 
        return mv;
    }
    
    @PostMapping("insertcontent")
    public ModelAndView insertContent(@RequestParam("cname") String name,
                                      @RequestParam("cdescription") String description,
                                      @RequestParam("curl") String contentLink,
                                      @RequestParam("cimage") MultipartFile file,
                                      @RequestParam("cpdf") MultipartFile pdfFile) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("contentsuccess");
        String message;

        try {
            Content content = new Content();
            content.setName(name);
            content.setDescription(description);
            content.setUrl(contentLink);

            // Handle image file
            if (!file.isEmpty()) {
                byte[] imageBytes = file.getBytes();
                Blob imageBlob = new SerialBlob(imageBytes);
                content.setImage(imageBlob);
            }

            // Handle PDF file
            if (!pdfFile.isEmpty()) {
                byte[] pdfBytes = pdfFile.getBytes();
                Blob pdfBlob = new SerialBlob(pdfBytes);
                content.setPdfUpload(pdfBlob);
            }

            // Save content through service
            message = expertService.addContent(content);
            if (message == null || message.isEmpty()) {
                message = "Content has been added successfully!";
            }

        } catch (Exception e) {
            e.printStackTrace();
            message = "Failed to add content: " + e.getMessage();
        }

        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("viewallcontents")
    public ModelAndView viewAllContents() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallcontents");

        try {
            List<Content> contentList = expertService.ViewAllContents();
            mv.addObject("contentlist", contentList);
        } catch (Exception e) {
            e.printStackTrace();
            mv.addObject("errorMessage", "Failed to fetch content: " + e.getMessage());
        }

        return mv;
    }

    @GetMapping("displayprodimage9")
    public ResponseEntity<byte[]> displayProdImage(@RequestParam int id) {
        try {
            Content content = expertService.displayContentByid(id);

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

    @GetMapping("displaypdf")
    public ResponseEntity<byte[]> displayPdf(@RequestParam int id) {
        try {
            Content content = expertService.displayContentByid(id);

            if (content != null && content.getPdfUpload() != null) {
                byte[] pdfBytes = content.getPdfUpload().getBytes(1, (int) content.getPdfUpload().length());
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_PDF);
                headers.setContentDispositionFormData("inline", "document.pdf");
                return ResponseEntity.ok()
                        .headers(headers)
                        .body(pdfBytes);
            } else {
                return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
    
    @GetMapping("viewallqueries")
    public ModelAndView viewallqueries() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewallqueries"); // Ensure this matches the correct JSP name
        List<Query> queries = expertService.ViewAllQueries();  // Fetch the list of queries from the service
        mv.addObject("querylist", queries); // Add the query list to the model
        return mv;
    }
    @GetMapping("addreply")
    public ModelAndView addreply() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addreply");
        return mv;
    }
    @PostMapping("insertreply")
    public ModelAndView insertReply(@RequestParam("queryId") int queryId,
                                    @RequestParam("reply") String reply,
                                    @RequestParam("expertName") String expertName,
                                    @RequestParam("timestamp") String timestamp,
                                    @RequestParam("replyUrl") String replyUrl) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("replysuccess");  // The view to display after successful insertion
        String message;

        try {
            // Create a new ReplyQuery object to store the reply details
            ReplyQuery replyQuery = new ReplyQuery();
            replyQuery.setQueryId(queryId);
            replyQuery.setReply(reply);
            replyQuery.setExpertName(expertName);
            replyQuery.setTimestamp(timestamp);
            replyQuery.setReplyUrl(replyUrl);

            // Save reply to the database (Assuming expertService is defined to handle reply saving)
            message = expertService.addReplyQuery(replyQuery);

            if (message == null || message.isEmpty()) {
                message = "Reply has been added successfully!";
            }
        } catch (Exception e) {
            e.printStackTrace();
            message = "Failed to add reply: " + e.getMessage();
        }

        mv.addObject("message", message);  // Add success/failure message to the model
        return mv;
    }


   
}
