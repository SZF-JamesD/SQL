CREATE DATABASE cd_management;
USE cd_management;

CREATE TABLE if not exists CDs(
	CD_ID int primary key auto_increment,
	CD_Name varchar(50)
    );

CREATE TABLE if not exists Artist(
	Artist_ID INT primary key auto_increment,
    Artist_Name varchar(50)
    );

CREATE TABLE if not exists Music_Genre(
	G_ID int primary key auto_increment,
    Genre  varchar (50) unique
    );

CREATE TABLE if not exists Songs(
	Song_ID int primary key auto_increment,
    Artist_ID int,
    G_ID int,
    Song_Title varchar(50),
    Rating enum('1','2','3','4','5'),
    foreign key(Artist_ID) references Artist(Artist_ID),
    foreign key(G_ID) references Music_Genre(G_ID)
    );
    
CREATE TABLE if not exists CD_Songs(
	CD_ID int,
    Song_ID int,
    foreign key(CD_ID) references CDs(CD_ID),
    foreign key(Song_ID) references Songs(Song_ID)
    );
    
CREATE VIEW CD_Songs_Details AS
SELECT 
    CDs.CD_Name AS CD_Name,
    Songs.Song_Title AS Song_Name,
    Songs.Rating AS Rating,
    Music_Genre.Genre AS Genre,
    Artist.Artist_Name AS Artist
FROM 
    CD_Songs
JOIN 
    CDs ON CD_Songs.CD_ID = CDs.CD_ID
JOIN 
    Songs ON CD_Songs.Song_ID = Songs.Song_ID
JOIN 
    Music_Genre ON Songs.G_ID = Music_Genre.G_ID
JOIN 
    Artist ON Songs.Artist_ID = Artist.Artist_ID
order by CD_Name ASC;
    
select * from cd_songs_details;

INSERT INTO CDs (CD_Name) VALUES 
('Greatest Hits'),
('Rock Classics'),
('Pop Hits 2024'),
('Classical Masterpieces'),
('Summer Vibes'),
('Epic Ballads'),
('Pink Floyd Classics CD'),
('Pop Diva Hits CD'),
('Indie Pop CD');

-- Inserting data into the 'Artist' table
INSERT INTO Artist (Artist_Name) VALUES
('The Beatles'),
('Queen'),
('Adele'),
('Ludwig van Beethoven'),
('Taylor Swift'),
('Ed Sheeran'),
('Pink Floyd'),
('Lady Gaga'),
('Imagine Dragons');

-- Inserting data into the 'Music_Genre' table
INSERT INTO Music_Genre (Genre) VALUES
('Rock'),
('Pop'),
('Classical'),
('Jazz'),
('Electronic'),
('Schlager'),
('Hip-Hop'),
('Indie'),
('Country'),
('Blues');


-- Inserting data into the 'Songs' table
INSERT INTO Songs (Artist_ID, G_ID, Song_Title, Rating) VALUES
(1, 1, 'Hey Jude', '5'),
(2, 1, 'Bohemian Rhapsody', '5'),
(3, 2, 'Hello', '4'),
(4, 3, 'Symphony No. 5', '5'),
(5, 2, 'Shake It Off', '4'),
(2, 1, 'We Will Rock You', '3'),
(1, 1, 'Let It Be', '4'),
(1, 1, 'Yesterday', '5'),
(2, 1, 'Under Pressure', '4'),
(3, 2, 'Someone Like You', '5'),
(3, 2, 'Set Fire to the Rain', '4'),
(4, 3, 'Moonlight Sonata', '5'),
(4, 3, 'Für Elise', '4'),
(5, 2, 'Love Story', '5'),
(5, 2, 'You Belong With Me', '4'),
(6, 2, 'Shape of You', '4'),
(6, 2, 'Perfect', '5'),
(6, 2, 'Bad Habits', '3'),
(7, 1, 'Comfortably Numb', '5'),
(7, 1, 'Another Brick in the Wall', '4'),
(7, 1, 'Wish You Were Here', '3'),
(8, 2, 'Bad Romance', '5'),
(8, 2, 'Poker Face', '4'),
(8, 2, 'Million Reasons', '2'),
(9, 1, 'Radioactive', '5'),
(9, 1, 'Believer', '4'),
(9, 1, 'Thunder', '3'),
(9, 1, 'Demons', '4'),
(1, 1, 'I Am the Walrus', '2'),
(1, 1, 'Wild Honey Pie', '1'),
-- Queen
(2, 1, 'Don’t Stop Me Now', '2'),
(2, 1, 'Sleepy People', '1'),
-- Adele
(3, 2, 'Chasing Pavements', '2'),
(3, 2, 'Turning Tables', '1'),
-- Ludwig van Beethoven
(4, 3, 'Symphony No. 6', '2'),
(4, 3, 'Piano Sonata No. 23', '1'),
-- Taylor Swift
(5, 2, 'All Too Well', '2'),
(5, 2, 'The Story of Us', '1'),
-- Ed Sheeran
(6, 2, 'Galway Girl', '2'),
(6, 2, 'Castle on the Hill', '1'),
-- Pink Floyd
(7, 1, 'The Trial', '2'),
(7, 1, 'Keep Talking', '1'),
-- Lady Gaga
(8, 2, 'Dance in the Dark', '2'),
(8, 2, 'Speechless', '1'),
-- Imagine Dragons
(9, 1, 'Friction', '2'),
(9, 1, 'I Don’t Know Why', '1');

-- Inserting data into the 'CD_Songs' table
INSERT INTO CD_Songs (CD_ID, Song_ID) VALUES
(1, 1),  -- Greatest Hits CD, Hey Jude
(1, 2),  -- Greatest Hits CD, Bohemian Rhapsody
(2, 3),  -- Rock Classics CD, Hello
(2, 6),  -- Rock Classics CD, We Will Rock You
(3, 5),  -- Pop Hits 2024 CD, Shake It Off
(4, 4),  -- Classical Masterpieces CD, Symphony No. 5
(1, 2),  -- Let It Be
(1, 3),  -- Yesterday
(2, 6),  -- Under Pressure
(3, 8),  -- Someone Like You
(3, 9),  -- Set Fire to the Rain
(4, 11),  -- Moonlight Sonata
(4, 12),  -- Für Elise
(5, 14),  -- Love Story
(5, 15),  -- You Belong With Me
(6, 16),  -- Shape of You
(6, 17),  -- Perfect
(6, 18),  -- Bad Habits
(7, 19),  -- Comfortably Numb
(7, 20),  -- Another Brick in the Wall
(7, 21),  -- Wish You Were Here
(8, 22),  -- Bad Romance
(8, 23),  -- Poker Face
(8, 24),  -- Million Reasons
(9, 25),  -- Radioactive
(9, 26),  -- Believer
(9, 27),  -- Thunder
(9, 28),  -- Demons
(1, 29),  -- I Am the Walrus
(1, 30),  -- Wild Honey Pie
(2, 31),  -- Don't Stop Me Now
(2, 32),  -- Sleepy People
(3, 33),  -- Chasing Pavements
(3, 34),  -- Turning Tables
(4, 35),  -- Symphony No. 6
(4, 36),  -- Piano Sonata No. 23
(5, 37),  -- All Too Well
(5, 38),  -- The Story of Us
(6, 39),  -- Galway Girl
(6, 40),  -- Castle on the Hill
(7, 41),  -- The Trial
(7, 42),  -- Keep Talking
(8, 43),  -- Dance in the Dark
(8, 44),  -- Speechless
(9, 45),  -- Friction
(9, 46);  -- I Don't Know Why


-- query 1
create table songs_rated_3_or_higher as
  select song_title, rating from songs where rating >= 3;

-- query 2
create table songs_rated_under_3 as
	select Songs.song_title, songs.rating, cds.CD_Name from songs
	join cd_songs on songs.song_id = cd_songs.song_id
    join cds on cd_songs.cd_id = cds.cd_id
    where cds.cd_name = 'Indie Pop CD'
    and songs.rating < 3;
    
-- query 3
create table all_cd_songs_artist_genre as
	select
    CDs.CD_Name AS CD_Name,
    Songs.Song_Title AS Song_Name,
    Music_Genre.Genre AS Genre,
    Artist.Artist_Name AS Artist
    FROM 
    CD_Songs
JOIN 
    CDs ON CD_Songs.CD_ID = CDs.CD_ID
JOIN 
    Songs ON CD_Songs.Song_ID = Songs.Song_ID
JOIN 
    Music_Genre ON Songs.G_ID = Music_Genre.G_ID
JOIN 
    Artist ON Songs.Artist_ID = Artist.Artist_ID
order by CD_Name ASC;

-- query 4
create table how_many_songs_per_genre as
	SELECT 
    Music_Genre.Genre AS Genre, 
    COUNT(Songs.Song_ID) AS Song_Count
FROM 
    Songs
JOIN 
    Music_Genre ON Songs.G_ID = Music_Genre.G_ID
GROUP BY 
    Music_Genre.Genre
ORDER BY 
    Song_Count DESC;
    
-- query 5

update music_genre set genre = 'Klassik' where genre = 'Classical';
	
CREATE TABLE updated_genres AS
SELECT G_ID, Genre
FROM Music_Genre
WHERE Genre NOT IN ('Klassik', 'Schlager');

INSERT INTO updated_genres (G_ID, Genre)
SELECT G_ID, 'Classic'
FROM Music_Genre
WHERE Genre = 'Klassik';

INSERT INTO updated_genres (G_ID, Genre)
SELECT G_ID, 'Deutsche Schlager'
FROM Music_Genre
WHERE Genre = 'Schlager';

-- query 6
INSERT INTO Artist (Artist_Name) VALUES ('Artist 1');
INSERT INTO Artist (Artist_Name) VALUES ('Artist 2');
INSERT INTO Artist (Artist_Name) VALUES ('Artist 3');
INSERT INTO CDs (CD_Name) VALUES ('CD 1');
INSERT INTO CDs (CD_Name) VALUES ('CD 2');
INSERT INTO CDs (CD_Name) VALUES ('CD 3');
INSERT INTO Songs (Artist_ID, G_ID, Song_Title, Rating) 
VALUES 
    (1, NULL, 'Song 1', '4'),
    (2, NULL, 'Song 2', '3'),
    (3, NULL, 'Song 3', '5');
INSERT INTO CD_Songs (CD_ID, Song_ID)
VALUES 
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 1);


CREATE TABLE CDs_with_genres (
    CD_ID INT PRIMARY KEY,
    CD_Name VARCHAR(50),
    Genres TEXT
) AS
SELECT 
    CDs.CD_ID,
    CDs.CD_Name,
    GROUP_CONCAT(Music_Genre.Genre SEPARATOR ', ') AS Genres
FROM 
    CDs
LEFT JOIN 
    CD_Songs ON CDs.CD_ID = CD_Songs.CD_ID
LEFT JOIN 
    Songs ON CD_Songs.Song_ID = Songs.Song_ID
LEFT JOIN 
    Music_Genre ON Songs.G_ID = Music_Genre.G_ID
GROUP BY 
    CDs.CD_ID, CDs.CD_Name;


WITH CDs_to_delete AS (
    SELECT CD_ID
    FROM CDs_with_genres
    WHERE Genres IS NULL OR Genres = ''
)
DELETE FROM CDs_with_genres
WHERE CD_ID IN (SELECT CD_ID FROM CDs_to_delete);

