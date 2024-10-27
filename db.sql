use musicapp;
-- Tạo bảng Artist
CREATE TABLE Artist (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Avatar VARCHAR(255)
);

-- Tạo bảng Song
CREATE TABLE Song (
    SongID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Duration TIME NOT NULL,
    Image VARCHAR(255),
    ArtistID INT,
    ReleaseDate DATE,
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID) ON DELETE NO ACTION
);

-- Tạo bảng User
CREATE TABLE User (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(255) NOT NULL UNIQUE,
    UserName VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL
);

-- Tạo bảng Playlist
CREATE TABLE Playlist (
    PlaylistID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE NO ACTION
);

-- Tạo bảng Playlist_Song
CREATE TABLE Playlist_Song (
    PlaylistID INT,
    SongID INT,
    PRIMARY KEY (PlaylistID, SongID),
    FOREIGN KEY (PlaylistID) REFERENCES Playlist(PlaylistID) ON DELETE CASCADE,
    FOREIGN KEY (SongID) REFERENCES Song(SongID) ON DELETE NO ACTION
);

-- Tạo bảng Favorite
CREATE TABLE Favorite (
    FavoriteID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    SongID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE NO ACTION,
    FOREIGN KEY (SongID) REFERENCES Song(SongID) ON DELETE NO ACTION
);
-- Insert table 

INSERT INTO Artist (Name, Avatar) VALUES
('Adele', 'assets/artists img/Adele.webp'),
('Ajay Atul', 'assets/artists img/Ajay Atul.webp'),
('Amit', 'assets/artists img/Amit.jpg'),
('Arijit Singh', 'assets/artists img/Arijit Singh.jpg'),
('Billie Eilish', 'assets/artists img/Billie Eilish.jpg'),
('Charli Puth', 'assets/artists img/Charli Puth.jpg'),
('Ed Sheeran', 'assets/artists img/Ed Sheeran.jpg'),
('Emiway', 'assets/artists img/Emiway.jpg'),
('Justin Bieber', 'assets/artists img/Justin Bieber.jpg'),
('Khalid', 'assets/artists img/Khalid.jpg'),
('Marshmello', 'assets/artists img/Marshmello.jpg'),
('Raghav', 'assets/artists img/Raghav.jpg'),
('Taylor Swift', 'assets/artists img/Taylor Swift.jpg'),
('Weeknd', 'assets/artists img/Weeknd.jpg');

INSERT INTO Song (Title, Duration, Image, ArtistID, ReleaseDate) VALUES
('Alone', '00:02:37', 'assets/music/Alone.m4a', 9,'2022-10-16'),
('Anti-Hero', '00:05:09', 'assets/music/Anti-Hero.m4a', 13,'2022-10-01'),
('BadGuy', '00:03:14', 'assets/music/BadGuy.m4a', 5,'2022-10-15'),
('Bairiya', '00:04:23', 'assets/music/Bairiya.m4a', 4,'2022-10-30'),
('Bholaa', '00:01:43', 'assets/music/Bholaa.m4a', 3,'2022-10-30'),
('Company', '00:03:49', 'assets/music/Company.m4a', 8,'2022-10-01'),
('Evergreen', '00:04:35', 'assets/music/Evergreen.m4a', 7,'2022-10-01'),
('Happier', '00:03:38', 'assets/music/Happier.m4a', 11,'2022-10-15'),
('Loser', '00:03:24', 'assets/music/Loser.m4a', 6,'2022-10-30'),
('Love', '00:03:13', 'assets/music/Love.m4a', 9,'2022-10-30'),
('Often', '00:04:09', 'assets/music/Often.m4a', 14,'2022-10-15'),
('Shree RAM', '00:02:39', 'assets/music/Shree RAM.m4a', 2,'2022-10-30'),
('Sorry', '00:03:19', 'assets/music/Sorry.m4a', 9,'2022-10-30'),
('Starboy', '00:03:47', 'assets/music/Starboy.m4a', 14,'2022-10-01'),
('Statellite', '00:03:04', 'assets/music/Statellite.m4a', 10,'2022-10-01'),
('The 30th', '00:03:36', 'assets/music/HThe 30th.m4a', 7,'2022-10-15'),
('U turn', '00:01:38', 'assets/music/U turn.m4a', 12,'2022-10-30'),
('Wine', '00:06:17', 'assets/music/Wine.m4a', 1,'2022-10-30');