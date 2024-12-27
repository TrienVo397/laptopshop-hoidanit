package com.example.LaptopshopApplication.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.LaptopshopApplication.domain.Role;
@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String Name);

}