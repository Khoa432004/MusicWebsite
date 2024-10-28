package org.springframework.boot.spring_boot_MusicApp.Services;

import org.springframework.boot.spring_boot_MusicApp.Models.*;
import org.springframework.boot.spring_boot_MusicApp.Repository_DAO.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class SongServices {
    @Autowired
    private SongRepository_Dao songRepository;

    public Song getSongById(Integer id) {
        return songRepository.findById(id).orElse(null);
    }
}
