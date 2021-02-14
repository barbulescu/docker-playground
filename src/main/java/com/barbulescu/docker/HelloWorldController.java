package com.barbulescu.docker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
public class HelloWorldController {

    @GetMapping("/")
    String sayHello() {
        return "Hello World v1 - " + LocalDateTime.now();
    }
}
