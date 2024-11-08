package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.boot.spring_boot_MusicApp.Services.UserServices;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;
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
    
    @PostMapping("/changepassword_user")
    @ResponseBody
    public ResponseEntity<String> changePasswordUser(@RequestBody Map<String, Object> request) {
    	
    	HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(false);
        Map<String, String> userMap = (Map<String, String>) request.get("user");
        
        User user = new User();
        user.setUsername(userMap.get("username"));
        user.setEmail(session.getAttribute("UserEmail").toString());
        user.setPassword(userMap.get("password"));

        String oldpass = (String) request.get("oldpass");
        try {
            userService.ChangePasswordUser(user,oldpass);
            session.invalidate();
            return ResponseEntity.ok("Change password successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }
    
    @PostMapping("/login_user")
    @ResponseBody
    public ResponseEntity<String> loginUser(@RequestParam("email") String email,
                                            @RequestParam("password") String password) {
    	try {
            HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(true);

            boolean isAuthenticated = userService.authenticate(email, password);

            if (isAuthenticated) {
                Optional<User> user = userService.getUserByEmail(email);
                if (user.isPresent()) {
                    session.setAttribute("UserName", user.get().getUsername());
                    session.setAttribute("UserEmail", user.get().getEmail());
                }
                return ResponseEntity.ok("Login successful.");
            } else {
                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid email or password.");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred during login: " + e.getMessage());
        }
    }
    
    @PostMapping("/logout_user")
    @ResponseBody
    public ResponseEntity<String> logout_User() {
        try {
            HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(false);
            
            if (session != null) {
                String UserName = (String) session.getAttribute("UserName");
                
                if (UserName != null) {
                    session.invalidate();
                    return ResponseEntity.ok("Logout successful.");
                } else {
                    return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Cannot find account");
                }
            } else {
                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("No session found");
            }
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred during logout: " + e.getMessage());
        }
    }
    
    @PutMapping("/update")
    @ResponseBody
    public ResponseEntity<String> updateUser(@RequestBody User user,@RequestBody String Oldpass) {
        try {
        	userService.ChangePasswordUser(user,Oldpass);
            return ResponseEntity.ok("User updated successfully.");
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred during update: " + e.getMessage());
        }
    }
    
}

