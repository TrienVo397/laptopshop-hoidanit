package com.example.LaptopshopApplication;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootApplication
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)

public class LaptopshopApplication {

	public static void main(String[] args) {
		SpringApplication.run(LaptopshopApplication.class, args);

		// ApplicationContext hoidanit =
		// SpringApplication.run(LaptopshopApplication.class, args);
		// for (String s : hoidanit.getBeanDefinitionNames()) {
		// System.out.println(s);
		// }

	}
}