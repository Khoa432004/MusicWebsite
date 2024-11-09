package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.boot.spring_boot_MusicApp.Models.Playlist;
import org.springframework.boot.spring_boot_MusicApp.Services.PlaylistServices;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import jakarta.servlet.http.HttpSession;
@Controller
public class PlaylistController {
	
	@Autowired
    private PlaylistServices playlistServices;
	
    @PostMapping("/add_playlist")
    @ResponseBody
    public ResponseEntity<String> registerUser(@RequestBody Playlist playlist) {
    	HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(false);
        try {
        	playlist.setUserID((int)session.getAttribute("UserID"));
        	playlistServices.addPlaylist(playlist);
            return ResponseEntity.ok("User registered successfully.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }
    
    @GetMapping("/user/playlists")
    @ResponseBody
    public ResponseEntity<?> getPlaylistsByUserID() {
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(false);

        if (session == null || session.getAttribute("UserID") == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("User not logged in.");
        }

        int userID = (int) session.getAttribute("UserID");
        List<Playlist> playlists = playlistServices.getPlaylistsByUserID(userID);

        return ResponseEntity.ok(playlists);
    }


}
