package org.springframework.boot.spring_boot_MusicApp.Repository_DAO;

import java.util.Optional;

import org.springframework.boot.spring_boot_MusicApp.Models.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface ArtistRepository_Dao extends JpaRepository<Artist, Integer>{
	Optional<Artist> findById(Integer id);
}
