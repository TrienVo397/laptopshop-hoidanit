package com.example.LaptopshopApplication.service;

import java.util.List;

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

    public List<User> getAllUser(){
        return this.userRepository.findAll();
    }

    public List<User> getAllUserByEmail(String email){
        return this.userRepository.findByEmail(email);
    }

    public List<User> getAllUserByEmailAndAddress(String email, String address){
        return this.userRepository.findByEmailAndAddress(email, address);
    }

    public User handleSaveUser(User user) {
        User newUser = this.userRepository.save(user);
        System.out.println(newUser);
        return newUser;
    }

    public void handleDeleteUser(long id){
        this.userRepository.deleteById(id);
    }

    public User getUserById(long id){
        return this.userRepository.findById(id);
    }
}
