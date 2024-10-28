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
    LinkPath VARCHAR(255),
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
('Weeknd', 'assets/artists img/Weeknd.jpg'),
('Jubin Nautiyal','assets/artists img/Jubin Nautiyal.jpg'),
('Eminem','assets/artists img/Eminem.jpg');

INSERT INTO Song (Title, Duration, Image,LinkPath, ArtistID, ReleaseDate) VALUES
('Alone', '00:02:37', 'assets/song img/Alone.png', 'assets/music/Alone.mp3', 9,'2022-10-16'),
('Anti-Hero', '00:05:09','assets/song img/Anti-Hero.jpeg', 'assets/music/Anti-Hero.mp3', 13,'2022-10-01'),
('BadGuy', '00:03:14', 'assets/song img/BadGuy.jpg','assets/music/BadGuy.mp3', 5,'2022-10-15'),
('Bairiya', '00:04:23','assets/song img/Bairiya.jpg', 'assets/music/Bairiya.mp3', 4,'2022-10-30'),
('Bholaa', '00:01:43','assets/song img/Bholaa.jpg', 'assets/music/Bholaa.mp3', 3,'2022-10-30'),
('Company', '00:03:49','assets/song img/Company.jpeg', 'assets/music/Company.mp3', 8,'2022-10-01'),
('Evergreen', '00:04:35','assets/song img/Evergreen.jpg', 'assets/music/Evergreen.mp3', 7,'2022-10-01'),
('Happier', '00:03:38','assets/song img/Happier.jpg', 'assets/music/Happier.mp3', 11,'2022-10-15'),
('Loser', '00:03:24','assets/song img/Loser.jpeg', 'assets/music/Loser.mp3', 6,'2022-10-30'),
('Love', '00:03:13','assets/song img/Love.jpg', 'assets/music/Love.mp3', 9,'2022-10-30'),
('Often', '00:04:09','assets/song img/Often.jpg', 'assets/music/Often.mp3', 14,'2022-10-15'),
('Shree RAM', '00:02:39','assets/song img/Shree RAM.jpg', 'assets/music/Shree RAM.mp3', 2,'2022-10-30'),
('Sorry', '00:03:19','assets/song img/Sorry.jpg', 'assets/music/Sorry.mp3', 9,'2022-10-30'),
('Starboy', '00:03:47','assets/song img/Starboy.jpeg', 'assets/music/Starboy.mp3', 14,'2022-10-01'),
('Statellite', '00:03:04','assets/song img/Statellite.jpeg', 'assets/music/Statellite.mp3', 10,'2022-10-01'),
('The 30th', '00:03:36','assets/song img/The 30th.jpg', 'assets/music/HThe 30th.mp3', 7,'2022-10-15'),
('U turn', '00:01:38','assets/song img/U turn.jpg', 'assets/music/U turn.mp3', 12,'2022-10-30'),
('Wine', '00:06:17','assets/song img/Wine.jpeg', 'assets/music/Wine.mp3', 1,'2022-10-30'),
('Ghoomey', '00:03:51','assets/song img/Ghoomey.jpg', 'assets/music/Ghoomey.mp3', 1,'2022-10-23'),
('Stan', '00:08:08','assets/song img/Eminem.jpg', 'assets/music/Stan.mp3', 1,'2022-10-24');