package org.springframework.boot.spring_boot_MusicApp.Repository_DAO;

import java.util.List;

import org.springframework.boot.spring_boot_MusicApp.Models.Playlist_song;
import org.springframework.boot.spring_boot_MusicApp.Models.SongDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface Playlist_songRepository_Dao extends JpaRepository<Playlist_song, Integer> {
	
	boolean existsById(int id);
	List<Playlist_song> findByPlaylistID(int playlistID);
	
	@Query("SELECT new org.springframework.boot.spring_boot_MusicApp.Models.SongDTO(s.songID, s.title, " +
		       "CAST(s.duration AS java.time.LocalTime), s.image, a.name) " +
		       "FROM Playlist_song ps " +
		       "JOIN Song s ON ps.songID = s.songID " +
		       "JOIN Artist a ON s.artistID = a.artistID " +
		       "WHERE ps.playlistID = :playlistID")
	List<SongDTO> findFavoriteSongsByPlaylistID(@Param("playlistID") int playlistID);

}
