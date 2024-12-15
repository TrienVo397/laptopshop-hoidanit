package com.example.LaptopshopApplication.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.service.annotation.GetExchange;

@Controller
public class DashboardController {

    @GetMapping("/admin")
    public String getDashboard() {
        return "admin/dashboard/show";
    }
}