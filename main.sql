CREATE TABLE friends (
  friend_id INT PRIMARY KEY,
  character_name VARCHAR(100),
  movie_name VARCHAR(100),
  year_produced INT
);

INSERT INTO friends (friend_id, character_name, movie_name, year_produced)
VALUES
(1, 'Peter Parker', 'Spider-Man: Homecoming', 2017),
(2, 'Miles Morales', 'Spider-Man: into the Spider-Verse', 2018),
(3, 'Gwen Stacy', 'The Amazing Spider-Man', 2012),
(4, 'Mary Jane Watson', 'Spider-Man', 2002);

SELECT*
FROM friends
WHERE year_produced =(
  SELECT MAX(year_produced)
  FROM friends
  WHERE movie_name LIKE '%Spider-man%'
);
// Hi, this is Caden Z
