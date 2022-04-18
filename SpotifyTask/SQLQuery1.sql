CREATE DATABASE SpotifyDB

USE SpotifyDB

CREATE TABLE Artists
(
	Id INT PRIMARY KEY IDENTITY,
	FullName NVARCHAR(20),
	Age INT
)

CREATE TABLE Albums
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20),
	ReleaseDate DATETIME2,
	ArtistId INT FOREIGN KEY REFERENCES Artists(Id)
)

CREATE TABLE Musics
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20),
	Duration INT,
	AlbumId INT FOREIGN KEY REFERENCES Albums(Id)
)

CREATE TABLE ArtistsMusics
(
	Id INT PRIMARY KEY IDENTITY,
	ArtistId INT FOREIGN KEY REFERENCES Artists(Id),
	MusicId INT FOREIGN KEY REFERENCES Musics(Id),
)

INSERT INTO Artists
VALUES
('Eminem Rzaoglu', 38),
('Weeknd Khudaferin', 27),
('Katy Aslanzade', 42)


INSERT INTO Albums
VALUES
('Bu heyat bizimdir', '2022-02-12',3),
('Sabirin bazari', '2022-01-10',1),
('Hemdullanin doneri', '2022-03-01',2)

INSERT INTO Musics
VALUES
('Ay Hemdulla Hemdulla', 12, 2),
('Bele heyat olar?', 32, 3),
('Bir Sabir dayi vardi', 11, 1)

INSERT INTO ArtistsMusics
VALUES
(1,3),
(2,1),
(3,2)

SELECT * FROM Albums


DROP TABLE Artists

DROP TABLE ArtistsMusics

DROP TABLE Musics

DROP TABLE Albums
