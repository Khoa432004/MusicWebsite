package org.springframework.boot.spring_boot_MusicApp.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "artist")
public class Artist {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ArtistID")
	private int ArtistID;
	
	@Column(name = "Name")
	private String Name;
	
	@Column(name = "Avatar")
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
