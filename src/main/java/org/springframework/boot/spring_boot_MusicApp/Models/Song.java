package org.springframework.boot.spring_boot_MusicApp.Models;

import java.time.LocalDate;
import java.time.LocalTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "songs")
public class Song {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Tự động tạo giá trị cho ID
	private int SongID;
	private String title;
	private LocalTime Duration;
	private String LinkPath;
	private String Image;
	private int ArtistID;
	private LocalDate ReleaseDate;
	
	public int getSongID() {
		return SongID;
	}
	public void setSongID(int songID) {
		SongID = songID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public LocalTime getDuration() {
		return Duration;
	}
	public void setDuration(LocalTime duration) {
		Duration = duration;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	public int getArtistID() {
		return ArtistID;
	}
	public void setArtistID(int artistID) {
		ArtistID = artistID;
	}
	public LocalDate getReleaseDate() {
		return ReleaseDate;
	}
	public void setReleaseDate(LocalDate releaseDate) {
		ReleaseDate = releaseDate;
	}
	public String getLinkPath() {
		return LinkPath;
	}
	public void setLinkPath(String linkPath) {
		LinkPath = linkPath;
	}
	
}
