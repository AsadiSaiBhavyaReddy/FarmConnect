package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.NotificationManager;

@Controller
public class NotificationController {

    @Autowired
    NotificationManager notificationManager;

    @GetMapping("/email")
    public String showEmailForm() {
        return "emailForm";
    }

    @PostMapping("/sendEmail")
    public String sendEmail(
        @RequestParam("from") String fromEmail,
        @RequestParam("to") String toEmail,
        @RequestParam("subject") String subject,
        @RequestParam("message") String message,
        Model model
    ) {
        String result = notificationManager.sendEmail(fromEmail, toEmail, subject, message);
        model.addAttribute("result", result);
        return "emailResult";
    }
}
