package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.boot.spring_boot_MusicApp.Models.*;
import org.springframework.boot.spring_boot_MusicApp.Services.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SongController {
	
    @Autowired
    private SongServices songService;
    
    @Autowired
    private ArtistServices artistServices;
    
    @GetMapping("/getSongDetails")
    @ResponseBody
    public ResponseEntity<?> getSongDetails(@RequestParam("songId") Integer songId) {
        Song song = songService.getSongById(songId);
        
        if (song != null) {
            Map<String, Object> response = new HashMap<>();
            response.put("title", song.getTitle());
            response.put("linkPath", song.getLinkPath());
            response.put("image", song.getImage());
            response.put("artistId", song.getArtistID());
            
            Artist artist = artistServices.getArtistById(song.getArtistID());
            response.put("artistName", artist.getName());
            
            return ResponseEntity.ok(response);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                                 .body("Song not found with ID: " + songId);
        }
    }

}

