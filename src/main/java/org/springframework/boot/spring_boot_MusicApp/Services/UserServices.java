package org.springframework.boot.spring_boot_MusicApp.Services;

import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.boot.spring_boot_MusicApp.Repository_DAO.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
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
}
