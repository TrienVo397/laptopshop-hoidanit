package com.example.LaptopshopApplication;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String index() {
        return "Hello world with Trien Vo 1";
    }

    @GetMapping("/user")
    public String UserPage() {
        return "User";
    }

    @GetMapping("/admin")
    public String adminPage() {
        return "Admin";
    }

}