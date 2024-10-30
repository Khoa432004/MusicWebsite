package org.springframework.boot.spring_boot_MusicApp.Repository_DAO;

import java.util.Optional;

import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface UserRepository_Dao extends JpaRepository<User, Integer> {
	boolean existsByEmail(String email);
}

