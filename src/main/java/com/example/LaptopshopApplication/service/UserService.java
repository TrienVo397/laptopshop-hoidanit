package com.example.LaptopshopApplication.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.LaptopshopApplication.domain.User;
import com.example.LaptopshopApplication.domain.Role;
import com.example.LaptopshopApplication.repository.RoleRepository;
import com.example.LaptopshopApplication.repository.UserRepository;;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public String handleHello() {
        return "Hello from Service";
    }

    public List<User> getAllUser() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public List<User> getAllUserByEmailAndAddress(String email, String address) {
        return this.userRepository.findByEmailAndAddress(email, address);
    }

    public User handleSaveUser(User user) {
        User hoidanit = this.userRepository.save(user);
        System.out.println(hoidanit);
        return hoidanit;
    }

    public void handleDeleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public Role  getRoleByName(String name){
        return this.roleRepository.findByName(name);
    }
}
