package com.example.LaptopshopApplication.controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.LaptopshopApplication.domain.User;
import com.example.LaptopshopApplication.service.UploadService;
import com.example.LaptopshopApplication.service.UserService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UserController {

    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    // @GetMapping("/")
    // // get the home page
    // public String getHomePage(Model model) {
    //     List<User> arrayUser = this.userService.getAllUserByEmail("1@gmail.com");
    //     System.out.println(arrayUser);

    //     model.addAttribute("trien", "test");
    //     model.addAttribute("hoidanit", "test");
    //     return "hello"; // return the view name to be rendered
    // }

    // get the user table
    @GetMapping("/admin/user")
    public String getUserTable(Model model) {
        List<User> allUsers = this.userService.getAllUser(); // get the data
        // System.out.println(">>> Check users: " + allUsers);
        model.addAttribute("users1", allUsers);
        return "admin/user/show"; // throw the data to the view
    }

    // get the user form
    @GetMapping("/admin/user/create")
    public String getUserForm(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    // post the user form
    @PostMapping("/admin/user/create")
    public String createUser(Model model, @ModelAttribute("newUser") User newUser,
            @RequestParam("hoidanitFile") MultipartFile file) {
        System.out.println("Create new user ");
        // this.userService.handleSaveUser(newUser);
        // relative path: absolute path trả ra thư mục webapp
        String avatar = this.uploadService.handleUploadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(newUser.getPassword());
        newUser.setPassword(hashPassword);
        newUser.setAvatar(avatar);
        newUser.setRole(this.userService.getRoleByName(newUser.getRole().getName()));
        this.userService.handleSaveUser(newUser);

        return "redirect:/admin/user";
    }

    // get the user detail page
    @GetMapping("/admin/user/{id}")
    public String getUserDetail(Model model, @PathVariable long id) {
        User userById = this.userService.getUserById(id);
        model.addAttribute("userById", userById);
        return "admin/user/detail";
    }

    // get the user update page
    @GetMapping("/admin/user/update/{id}")
    public String getUpdatePage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("currentUser", currentUser);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String UpdateUser(Model model, @ModelAttribute User currentUser,
            @RequestParam("hoidanitFile") MultipartFile file) {
        User updateUser = this.userService.getUserById(currentUser.getId());
        String avatar = this.uploadService.handleUploadFile(file, "avatar");
        System.out.println("Update user ");
        updateUser.setAddress(currentUser.getAddress());
        updateUser.setPhone(currentUser.getPhone());
        updateUser.setFullName(currentUser.getFullName());
        updateUser.setRole(this.userService.getRoleByName(currentUser.getRole().getName()));
        updateUser.setAvatar(avatar);
        this.userService.handleSaveUser(updateUser);
        return "redirect:/admin/user";
    }

    // get delete page
    @GetMapping("/admin/user/delete/{id}")
    public String getDeletePage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("currentUser", currentUser);
        return "admin/user/delete";
    }

    // delete user
    @PostMapping("/admin/user/delete")
    public String deleteUser(Model model, @ModelAttribute User currentUser) { // thông tin bên view
        this.userService.handleDeleteUser(currentUser.getId());
        return "redirect:/admin/user";
    }
}
