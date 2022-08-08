package com.k8s.learnkubernetes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.time.LocalDate;
import java.time.LocalDateTime;

@RestController
@Configuration
@EnableWebMvc
@SpringBootApplication
public class LearnKubernetesApplication {

    public static void main(String[] args) {
        SpringApplication.run(LearnKubernetesApplication.class, args);
    }

    @GetMapping("/")
    public String hello() {
        return "Hello World !!!" + LocalDateTime.now();
    }

}
