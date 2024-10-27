package org.springframework.boot.spring_boot_MusicApp.Models;

public class Artist {
	private int ArtistID;
	private String Name;
	private String Avatar;
	
	public int getArtistID() {
		return ArtistID;
	}
	public void setArtistID(int artistID) {
		ArtistID = artistID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getAvatar() {
		return Avatar;
	}
	public void setAvatar(String avatar) {
		Avatar = avatar;
	}
	
}
