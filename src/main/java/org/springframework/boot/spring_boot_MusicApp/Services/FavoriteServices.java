package org.springframework.boot.spring_boot_MusicApp.Services;

import org.springframework.boot.spring_boot_MusicApp.Models.Favorite;
import org.springframework.boot.spring_boot_MusicApp.Repository_DAO.FavoriteRepository_Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FavoriteServices {
    @Autowired
    private FavoriteRepository_Dao favoriteRepository_Dao;

    public void addFavorite(Favorite favorite) throws Exception {
        List<Favorite> existingFavorites = favoriteRepository_Dao.findByUserID(favorite.getUserID());

        for (Favorite existingFavorite : existingFavorites) {
            if (existingFavorite.getSongID() == favorite.getSongID()) {
                throw new Exception("Song already added to favorites.");
            }
        }

        favoriteRepository_Dao.save(favorite);
    }
    public List<Favorite> getPlaylistsByUserID(int userID) {
        return favoriteRepository_Dao.findByUserID(userID);
    }
}
