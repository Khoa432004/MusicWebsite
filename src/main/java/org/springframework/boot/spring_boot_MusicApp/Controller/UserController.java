package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.boot.spring_boot_MusicApp.Services.UserServices;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class UserController {

    @Autowired
    private UserServices userService;

    @PostMapping("/register_user")
    @ResponseBody
    public ResponseEntity<String> registerUser(@RequestBody User user) {
        try {
            userService.registerUser(user);
            return ResponseEntity.ok("User registered successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }
}

