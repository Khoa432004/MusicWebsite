package org.springframework.boot.spring_boot_MusicApp.Models;

import java.time.LocalDate;
import java.time.LocalTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "song")
public class Song {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SongID")  // Ánh xạ tới cột SongID
	private int SongID;
	
	@Column(name = "Title")    // Ánh xạ tới cột Title
	private String title;
	
	@Column(name = "Duration") // Ánh xạ tới cột Duration
	private LocalTime Duration;

	@Column(name = "LinkPath") // Ánh xạ tới cột LinkPath
	private String LinkPath;
	
	@Column(name = "Image")     // Ánh xạ tới cột Image
	private String Image;
	
	@Column(name = "ArtistID")  // Ánh xạ tới cột ArtistID
	private int ArtistID;

	@Column(name = "ReleaseDate") // Ánh xạ tới cột ReleaseDate
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

	public String getLinkPath() {
		return LinkPath;
	}

	public void setLinkPath(String linkPath) {
		LinkPath = linkPath;
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
	
}
