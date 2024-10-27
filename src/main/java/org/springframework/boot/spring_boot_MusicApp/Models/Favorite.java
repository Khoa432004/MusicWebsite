package org.springframework.boot.spring_boot_MusicApp.Models;

public class Favorite {
	private int FavoriteID;
	private int UserID;
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
