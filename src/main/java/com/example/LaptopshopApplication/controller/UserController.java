package com.example.LaptopshopApplication.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.LaptopshopApplication.service.UserService;

@RestController
public class UserController {

   private UserService userService;
   
    public UserController(UserService userService) {
    this.userService = userService;}

    @GetMapping("/")
    public String getHomePage(){
        return userService.handleHello();
    }
}
