package com.example.LaptopshopApplication.service;

import org.springframework.stereotype.Service;

import com.example.LaptopshopApplication.domain.User;
import com.example.LaptopshopApplication.repository.UserRepository;;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public String handleHello() {
        return "Hello from Service";
    }

    public User handleSaveUser(User user) {
        User newUser = this.userRepository.save(user);
        System.out.println(newUser);
        return newUser;
    }
}
