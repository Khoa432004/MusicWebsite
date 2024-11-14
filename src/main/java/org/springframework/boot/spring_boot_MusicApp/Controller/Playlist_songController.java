package org.springframework.boot.spring_boot_MusicApp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.spring_boot_MusicApp.Models.Playlist_song;
import org.springframework.boot.spring_boot_MusicApp.Models.SongDTO;
import org.springframework.boot.spring_boot_MusicApp.Services.Playlist_songServices;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class Playlist_songController {
	@Autowired
    private Playlist_songServices playlist_songServices;
    @PostMapping("/add_song_to_playlist")
    @ResponseBody
    public ResponseEntity<String> addSongtoPlaylist(@RequestBody Playlist_song playlist_song) {
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(false);
        if (session == null || session.getAttribute("UserID") == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("User not logged in.");
        }

        try {
        	playlist_songServices.addplaylist_song(playlist_song);
            return ResponseEntity.ok("Song added to your playlist.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }
    
    @GetMapping("/user/song_playlist")
    @ResponseBody
    public ResponseEntity<?> getListSongByPlaylistID(@RequestParam(value = "playlistId", required = false) Integer playlistId) {
    	
        if (playlistId == null) {
            return ResponseEntity.badRequest().body("Playlist ID is required.");
        }
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(false);

        if (session == null || session.getAttribute("UserID") == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("User not logged in.");
        }

        int userID = (int) session.getAttribute("UserID");
        List<SongDTO> playlist_songs = playlist_songServices.getSongDTOByPlaylistID(playlistId);
        return ResponseEntity.ok(playlist_songs);
    }
}
