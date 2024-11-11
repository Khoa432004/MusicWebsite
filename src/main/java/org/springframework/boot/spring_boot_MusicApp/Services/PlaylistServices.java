package org.springframework.boot.spring_boot_MusicApp.Services;

import org.springframework.boot.spring_boot_MusicApp.Models.Playlist;
import org.springframework.boot.spring_boot_MusicApp.Repository_DAO.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlaylistServices {
	@Autowired
    private PlaylistRepository_Dao playlistRepository_Dao;

    public void addPlaylist(Playlist playlist) throws Exception {
        if (playlistRepository_Dao.existsByName(playlist.getName())) {
            throw new Exception("Name already add to playlist.");
        }
        playlistRepository_Dao.save(playlist);
    }
    
    public List<Playlist> getPlaylistsByUserID(int userID) {
        return playlistRepository_Dao.findByUserID(userID);
    }
}
