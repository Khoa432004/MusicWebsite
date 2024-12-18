package org.springframework.boot.spring_boot_MusicApp.Repository_DAO;

import java.util.List;

import org.springframework.boot.spring_boot_MusicApp.Models.Favorite;
import org.springframework.boot.spring_boot_MusicApp.Models.SongDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface FavoriteRepository_Dao extends JpaRepository<Favorite, Integer>{
	boolean existsById(int id);
	List<Favorite> findByUserID(int userID);
	
	@Query("SELECT new org.springframework.boot.spring_boot_MusicApp.Models.SongDTO(s.songID, s.title, " +
		       "CAST(s.duration AS java.time.LocalTime), s.image, a.name) " +
		       "FROM Favorite f " +
		       "JOIN Song s ON f.songID = s.songID " +
		       "JOIN Artist a ON s.artistID = a.artistID " +
		       "WHERE f.userID = :userID")
	List<SongDTO> findFavoriteSongsByUserID(@Param("userID") int userID);


}
