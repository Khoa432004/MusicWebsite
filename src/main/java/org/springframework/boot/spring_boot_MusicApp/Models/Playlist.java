package org.springframework.boot.spring_boot_MusicApp.Models;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "playlist")
public class Playlist {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PlaylistID")
	private int PlaylistID;
	
	@Column(name = "UserID")
	private int UserID;
	
	@Column(name = "Name")
	private String Name;
	
	@Column(name = "Description")
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
