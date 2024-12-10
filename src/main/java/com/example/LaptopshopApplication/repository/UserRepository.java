package com.example.LaptopshopApplication.repository;

import org.springframework.stereotype.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.*;
import com.example.LaptopshopApplication.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User userTest);
    List<User> findByEmailAndAddress(String email, String address);
    List<User> findByEmail(String email);
}
