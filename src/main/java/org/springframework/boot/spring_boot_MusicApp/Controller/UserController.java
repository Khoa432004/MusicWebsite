package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.boot.spring_boot_MusicApp.Services.UserServices;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
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
    
    @PostMapping("/login_user")
    @ResponseBody
    public ResponseEntity<String> loginUser(@RequestParam("email") String email,
                                            @RequestParam("password") String password) {
    	try {
            HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(true); // Tạo session nếu chưa có

            boolean isAuthenticated = userService.authenticate(email, password);

            if (isAuthenticated) {
                Optional<User> user = userService.getUserByEmail(email);
                if (user.isPresent()) {
                    session.setAttribute("UserName", user.get().getUsername());
                    System.out.print(session.getAttribute("UserName").toString());
                }
                return ResponseEntity.ok("Login successful.");
            } else {
                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid email or password.");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred during login: " + e.getMessage());
        }
    }
}

