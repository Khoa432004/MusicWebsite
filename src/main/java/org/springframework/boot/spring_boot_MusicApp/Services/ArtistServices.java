package org.springframework.boot.spring_boot_MusicApp.Services;

import java.util.Optional;

import org.springframework.boot.spring_boot_MusicApp.Models.*;
import org.springframework.boot.spring_boot_MusicApp.Repository_DAO.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArtistServices {
    @Autowired
    private ArtistRepository_Dao artistRepository_Dao;

    public Artist getArtistById(Integer songId) {
        Optional<Artist> artist = artistRepository_Dao.findById(songId);
        return artist.orElse(null);
    }
}
