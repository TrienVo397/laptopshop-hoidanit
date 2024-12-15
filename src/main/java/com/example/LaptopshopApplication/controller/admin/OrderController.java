package com.example.LaptopshopApplication.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.service.annotation.GetExchange;

@Controller
public class OrderController {

    @GetMapping("/admin/order")
    public String getOrder() {
        return "admin/order/show";
    }
}