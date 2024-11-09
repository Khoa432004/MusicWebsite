package org.springframework.boot.spring_boot_MusicApp.Repository_DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.boot.spring_boot_MusicApp.Models.Playlist;
import org.springframework.boot.spring_boot_MusicApp.Models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface PlaylistRepository_Dao extends JpaRepository<Playlist, Integer>{
	boolean existsByName(String name);
	List<Playlist> findByUserID(int userID);
}
