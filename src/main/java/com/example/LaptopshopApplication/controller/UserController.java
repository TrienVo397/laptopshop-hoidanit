package com.example.LaptopshopApplication.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.LaptopshopApplication.domain.User;
import com.example.LaptopshopApplication.repository.UserRepository;
import com.example.LaptopshopApplication.service.UserService;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {

    private final UserService userService;
    private final UserRepository userRepository;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
        this.userRepository = userRepository;
    }

    @GetMapping("/")

    // get the home page
    public String getHomePage(Model model) {
        List<User> arrayUser = this.userService.getAllUserByEmail("1@gmail.com");
        System.out.println(arrayUser);

        model.addAttribute("trien", "test");
        model.addAttribute("hoidanit", "test");
        return "hello"; // return the view name to be rendered
    }

    // get the user table
    @GetMapping("/admin/user")
    public String getUserTable(Model model) {
        List<User> allUsers = this.userService.getAllUser(); //get the data
        // System.out.println(">>> Check users: " + allUsers);
        model.addAttribute("users1", allUsers);
        return "admin/user/userTable"; // throw the data to the view
    }

    // get the user form
    @GetMapping("/admin/user/create")
    public String getUserForm(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    // post the user form
    @PostMapping("/admin/user/create")
    public String createUser(Model model, @ModelAttribute("newUser") User newUser) {
        // System.out.println("run here " + newUser);
        this.userService.handleSaveUser(newUser);
        return "redirect:/admin/user";
    }
    // get the user detail page
    @GetMapping("/admin/user/{id}")
    public String getUserDetail(Model model, @PathVariable long id) {
        User userById = this.userService.getUserById(id);
        model.addAttribute("userById", userById);
        return "admin/user/userDetailPage";
    }

    // get the user update page
    @GetMapping("/admin/user/update/{id}")
    public String getUpdatePage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("currentUser", currentUser);
        return "admin/user/userUpdatePage";
    }

    @PostMapping("/admin/user/update")
    public String UpdateUser(Model model, @ModelAttribute User currentUser) {
        User updateUser = this.userService.getUserById(currentUser.getId());
        System.out.println("Run here");
        updateUser.setAddress(currentUser.getAddress());
        updateUser.setPhone(currentUser.getPhone());
        updateUser.setFullName(currentUser.getFullName());
        this.userService.handleSaveUser(updateUser);
        return "redirect:/admin/user";
    }

    //get delete page
    @GetMapping("/admin/user/delete/{id}")
    public String getDeletePage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("currentUser", currentUser);
        return "admin/user/userDeletePage";
    }
    
    //delete user
    @PostMapping("/admin/user/delete")
    public String deleteUser(Model model,@ModelAttribute User currentUser) { // thông tin bên view
        this.userService.handleDeleteUser(currentUser.getId());
        return "redirect:/admin/user";
    }
}
