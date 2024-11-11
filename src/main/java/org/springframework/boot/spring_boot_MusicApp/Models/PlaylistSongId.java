package org.springframework.boot.spring_boot_MusicApp.Models;

import java.io.Serializable;

public class PlaylistSongId implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int playlistID;
    private int songID;

    // Constructor, getter, setter, equals(), hashCode()

    public PlaylistSongId() {}

    public PlaylistSongId(int playlistID, int songID) {
        this.playlistID = playlistID;
        this.songID = songID;
    }

    public int getPlaylistID() {
        return playlistID;
    }

    public void setPlaylistID(int playlistID) {
        this.playlistID = playlistID;
    }

    public int getSongID() {
        return songID;
    }

    public void setSongID(int songID) {
        this.songID = songID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PlaylistSongId that = (PlaylistSongId) o;
        return playlistID == that.playlistID && songID == that.songID;
    }

    @Override
    public int hashCode() {
        return 31 * playlistID + songID;
    }
}
