package org.springframework.boot.spring_boot_MusicApp.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.spring_boot_MusicApp.Models.Playlist_song;
import org.springframework.boot.spring_boot_MusicApp.Models.SongDTO;
import org.springframework.boot.spring_boot_MusicApp.Repository_DAO.Playlist_songRepository_Dao;
import org.springframework.stereotype.Service;

@Service
public class Playlist_songServices {
    @Autowired
    private Playlist_songRepository_Dao playlist_songRepository_Dao;
    public void addplaylist_song(Playlist_song playlist_song) throws Exception {
        List<Playlist_song> existingPlaylist_songs = playlist_songRepository_Dao.findByPlaylistID(playlist_song.getPlaylistID());
        for (Playlist_song existingplaylist_song : existingPlaylist_songs) {
            if (existingplaylist_song.getSongID() == playlist_song.getSongID()) {
                throw new Exception("Song already added to this playlist.");
            }
        }
        System.out.print(playlist_song.getPlaylistID());
        System.out.print(playlist_song.getSongID());
        playlist_songRepository_Dao.save(playlist_song);
    }
    public List<Playlist_song> getPlaylist_songByUserID(int userID) {
        return playlist_songRepository_Dao.findByPlaylistID(userID);
    }
    
    public List<SongDTO> getSongDTOByPlaylistID(int playlistID) {
        return playlist_songRepository_Dao.findFavoriteSongsByPlaylistID(playlistID);
    }
}
