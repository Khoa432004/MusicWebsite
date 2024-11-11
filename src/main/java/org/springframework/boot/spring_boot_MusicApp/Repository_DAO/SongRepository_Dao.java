package org.springframework.boot.spring_boot_MusicApp.Repository_DAO;

import java.util.Optional;

import org.springframework.boot.spring_boot_MusicApp.Models.*;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SongRepository_Dao extends JpaRepository<Song, Integer>{
	Optional<Song> findById(Integer id);
}
