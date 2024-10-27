package org.springframework.boot.spring_boot_MusicApp.Models;

public class Playlist {
	private int PlaylistID;
	private int UserID;
	private String Name;
	private String Description;
	
	public int getPlaylistID() {
		return PlaylistID;
	}
	public void setPlaylistID(int playlistID) {
		PlaylistID = playlistID;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	
	
}
