CREATE DATABASE SPOTIFY 
USE SPOTIFY

CREATE TABLE Artist
(
	ID INT PRIMARY KEY IDENTITY,
	FullName varchar(50),
	Age INT,
)
INSERT INTO Artist
VALUES
('Dilqem',50),
('Hikmet',44),
('Ebulfez',67),
('Tofiq',35)


CREATE TABLE Albums
(
	ID INT PRIMARY KEY IDENTITY,
	Name varchar(50),
	ArtistID INT FOREIGN KEY REFERENCES Artist(ID),
	ReleaseDate DATETIME2
)
INSERT INTO Albums
VALUES
('DilqemAlbum',1,'2020-07-12'),
('HikmetAlbum',2,'2020-08-14'),
('EbulfezAlbum',3,'2020-06-16'),
('TofiqAlbum',4,'2020-01-12')

CREATE TABLE Musics
(
	ID INT PRIMARY KEY IDENTITY,
	Name VARCHAR(50),
	Duration INT,
	AlbumID INT FOREIGN KEY REFERENCES Albums(ID),
)
INSERT INTO Musics
VALUES
('DilqemMahni',50,2),
('HikmetMahni',100,3),
('EbulfezMahni',40,4),
('TofiqMahni',10,5)

CREATE TABLE MusicsArtist 
(
	ID INT PRIMARY KEY IDENTITY,
	MusicID INT FOREIGN KEY REFERENCES Musics(ID),
	ArtistID INT FOREIGN KEY REFERENCES Artist(ID)
)
INSERT INTO MusicsArtist
VALUES
(2,1),
(3,2),
(4,3),
(5,4)




select M.Name,M.Duration,Artist.FullName,Albums.Name from Musics as M
join Albums on M.AlbumID=Albums.ID
join Artist on Albums.ArtistID=Artist.ID


SELECT Albums.Name,(SELECT COUNT(Id) from Musics Where Albums.ID=Musics.AlbumID) FROM Albums
