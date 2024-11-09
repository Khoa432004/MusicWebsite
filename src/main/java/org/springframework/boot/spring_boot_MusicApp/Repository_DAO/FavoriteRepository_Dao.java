package org.springframework.boot.spring_boot_MusicApp.Repository_DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.boot.spring_boot_MusicApp.Models.Favorite;
import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface FavoriteRepository_Dao extends JpaRepository<Favorite, Integer>{
	boolean existsById(int id);
	List<Favorite> findByUserID(int userID);
}
