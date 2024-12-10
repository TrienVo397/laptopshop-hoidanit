package com.example.LaptopshopApplication.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.LaptopshopApplication.domain.User;
import com.example.LaptopshopApplication.repository.UserRepository;
import com.example.LaptopshopApplication.service.UserService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class UserController {

    private final UserService userService;
    private final UserRepository userRepository;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<User> arrayUser = this.userService.getAllUserByEmail("1@gmail.com");
        System.out.println(arrayUser);

        model.addAttribute("trien", "test");
        model.addAttribute("hoidanit", "test");
        return "hello";
    }

    @GetMapping("/admin/user")
    public String getUserTable(Model model) {
        List<User> allUsers = this.userService.getAllUser();
        System.out.println(">>> Check users: " + allUsers);
        model.addAttribute("users1", allUsers);
        return "admin/user/userTable";
    }

    @GetMapping("/admin/user/create")
    public String getUserForm(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String createUser(Model model, @ModelAttribute User newUser) {
        System.out.println("run here " + newUser);
        this.userService.handleSaveUser(newUser);
        return "redirect:/admin/user";
    }

}
