package com.example.LaptopshopApplication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.LaptopshopApplication.service.UserService;

@Controller
public class UserController {

   private UserService userService;
   
    public UserController(UserService userService) {
    this.userService = userService;}

    @GetMapping("/")
    public String getHomePage(){
        // return userService.handleHello();
        return "eric.html"; // Spring Boot will look for eric.html in src/main/resources/static
    }
}
