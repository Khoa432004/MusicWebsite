package org.springframework.boot.spring_boot_MusicApp.Models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "playlist_song")

public class Playlist_song {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PlaylistID")
	private int PlaylistID;
	
	@Column(name = "SongID")
	private int SongID;
	
	public int getPlaylistID() {
		return PlaylistID;
	}
	public void setPlaylistID(int playlistID) {
		PlaylistID = playlistID;
	}
	public int getSongID() {
		return SongID;
	}
	public void setSongID(int songID) {
		SongID = songID;
	}
	
	
}
