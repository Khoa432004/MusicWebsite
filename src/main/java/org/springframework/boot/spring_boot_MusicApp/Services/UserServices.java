package org.springframework.boot.spring_boot_MusicApp.Services;

import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.boot.spring_boot_MusicApp.Repository_DAO.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserServices {
	@Autowired
    private UserRepository_Dao userRepository;

    public void registerUser(User user) throws Exception {
        if (userRepository.existsByEmail(user.getEmail())) {
            throw new Exception("Email already registered.");
        }
        userRepository.save(user);
    }
    
    public boolean authenticate(String email, String password) {
        Optional<User> user = userRepository.findByEmail(email);
        return user.isPresent() && user.get().getPassword().equals(password);
    }

	public Optional<User> getUserByEmail(String email) {
		// TODO Auto-generated method stub
		Optional<User> user = userRepository.getUserByEmail(email);
		return user;
	}
	
	public void ChangePasswordUser(User user,String Oldpass) throws Exception {
        Optional<User> existingUserOpt = userRepository.findByEmail(user.getEmail());
        
        	
        existingUserOpt.map(existingUser -> {
        	System.out.println(existingUser.getPassword());
        	System.out.println(user.getPassword());
        	if (!Oldpass.equals(existingUser.getPassword())) {
                throw new RuntimeException("Current password is incorrect.");
            }
        	else
        	{
	            existingUser.setPassword(user.getPassword());
	            existingUser.setUsername(user.getUsername());
	            return userRepository.save(existingUser);
        	}
        }).orElseThrow(() -> new RuntimeException("User not found"));
    }
}
