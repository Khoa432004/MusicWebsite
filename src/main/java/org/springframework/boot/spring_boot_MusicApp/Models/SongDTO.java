package org.springframework.boot.spring_boot_MusicApp.Models;

import java.time.LocalTime;

public class SongDTO {
	private int songID;
    private String title;
    private LocalTime duration;
    private String image;
    private String artistName;
	public SongDTO(int songID, String title, LocalTime duration, String image, String artistName) {
		super();
		this.songID = songID;
		this.title = title;
		this.duration = duration;
		this.image = image;
		this.artistName = artistName;
	}
	public int getSongID() {
		return songID;
	}
	public void setSongID(int songID) {
		this.songID = songID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public LocalTime getDuration() {
		return duration;
	}
	public void setDuration(LocalTime duration) {
		this.duration = duration;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getArtistName() {
		return artistName;
	}
	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}
    
	
    
}
