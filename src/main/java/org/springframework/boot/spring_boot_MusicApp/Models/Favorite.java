package org.springframework.boot.spring_boot_MusicApp.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "favorite")
public class Favorite {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	
    @Column(name = "FavoriteID")
	private int FavoriteID;
	
	@Column(name = "UserID")
	private int UserID;
	
	@Column(name = "SongID")
	private int SongID;
	
	public int getFavoriteID() {
		return FavoriteID;
	}
	public void setFavoriteID(int favoriteID) {
		FavoriteID = favoriteID;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public int getSongID() {
		return SongID;
	}
	public void setSongID(int songID) {
		SongID = songID;
	}
	
}
