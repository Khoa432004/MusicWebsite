package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.boot.spring_boot_MusicApp.Models.*;
import org.springframework.boot.spring_boot_MusicApp.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SongController {
    @Autowired
    private SongServices songService;

    @GetMapping("/getSongDetails")
    public ModelAndView getSongDetails(@RequestParam("songId") Integer songId) {
        Song song = songService.getSongById(songId);
        ModelAndView modelAndView = new ModelAndView("Home");
        
        if (song != null) {
            modelAndView.addObject("title", song.getTitle());
            modelAndView.addObject("linkPath", song.getLinkPath());
            modelAndView.addObject("image", song.getImage());
            modelAndView.addObject("artistId", song.getArtistID());
        } else {
            modelAndView.addObject("error", "Song not found");
        }
        
        return modelAndView;
    }
}

