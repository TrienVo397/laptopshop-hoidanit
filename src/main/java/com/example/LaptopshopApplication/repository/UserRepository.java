package com.example.LaptopshopApplication.repository;

import org.springframework.stereotype.Repository;
import org.springframework.data.repository.*;
import com.example.LaptopshopApplication.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User save(User userTest);
}
