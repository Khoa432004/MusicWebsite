package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.spring_boot_MusicApp.Models.Favorite;
import org.springframework.boot.spring_boot_MusicApp.Services.FavoriteServices;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class FavoriteController {
    @Autowired
    private FavoriteServices favoriteServices;

    @PostMapping("/add_favorite")
    @ResponseBody
    public ResponseEntity<String> addFavorite(@RequestBody Favorite favorite) {
        HttpSession session = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest().getSession(false);

        if (session == null || session.getAttribute("UserID") == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("User not logged in.");
        }

        favorite.setUserID((int) session.getAttribute("UserID"));

        try {
            favoriteServices.addFavorite(favorite);
            return ResponseEntity.ok("Song added to favorites.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error: " + e.getMessage());
        }
    }
}
