CREATE DATABASE team_management;
USE team_management;


CREATE TABLE Teams(
	team_id INT primary key auto_increment,
    name VARCHAR(50),
    city VARCHAR(50),
    established_year date
    );  
    
create table Coaches(
	coach_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    birthdate date,
    certification_level varchar (50),
    salary decimal
    );
       
create table Players(
	player_id int primary key auto_increment,
    team_id int,
    first_name varchar(50),
    last_name varchar(50),
    birthdate date,
    position varchar(50),
    foreign key(team_id) references Teams(team_id)
    );
    
create table Coach_Trainings(
	training_id int primary key auto_increment,
    course_name varchar(255),
    institution varchar(255),
    certification_level varchar(50)
    );
    
create table coach_trainings_and_coaches(
	coach_id int,
    training_id int,
    primary key(coach_id, training_id),
    foreign key (coach_id) references coaches(coach_id),
    foreign key (training_id) references coach_trainings(training_id)
    );
    
create table player_coaches(
	player_id int,
    coach_id int,
    primary key (player_id, coach_id),
    foreign key (player_id) references players(player_id),
    foreign key (coach_id) references coaches(coach_id)
    );
    
create table coach_teams(
	coach_id int,
    team_id int,
    primary key (coach_id, team_id),
    foreign key (coach_id) references coaches(coach_id),
    foreign key (team_id) references teams(team_id)
    );
    
INSERT INTO Teams (name, city, established_year) VALUES
('FC Barcelona', 'Barcelona', '1899-11-29'),
('Real Madrid', 'Madrid', '1902-03-06'),
('Manchester United', 'Manchester', '1878-01-01'),
('Bayern Munich', 'Munich', '1900-02-27'),
('Paris Saint-Germain', 'Paris', '1970-08-12'),
('Juventus', 'Turin', '1897-11-01'),
('AC Milan', 'Milan', '1899-12-16'),
('Chelsea', 'London', '1905-03-10'),
('Liverpool', 'Liverpool', '1892-06-03'),
('Arsenal', 'London', '1886-12-01'),
('Borussia Dortmund', 'Dortmund', '1909-12-19'),
('Atletico Madrid', 'Madrid', '1903-04-26'),
('Inter Milan', 'Milan', '1908-03-09'),
('Napoli', 'Naples', '1926-08-01'),
('AS Roma', 'Rome', '1927-07-22');
INSERT INTO Coaches (first_name, last_name, birthdate, certification_level, salary) VALUES
('Zinedine', 'Zidane', '1972-06-23', 'UEFA Pro', 1000000.00),
('Pep', 'Guardiola', '1971-01-18', 'AFC Pro', 1200000.00),
('Jürgen', 'Klopp', '1967-06-16', 'FA Pro', 1300000.00),
('Hans-Dieter', 'Flick', '1965-02-24', 'DFB Pro', 900000.00),
('Thomas', 'Tuchel', '1973-08-29', 'UEFA Pro', 950000.00),
('Antonio', 'Conte', '1969-07-31', 'UEFA Pro', 1100000.00),
('Mauricio', 'Pochettino', '1972-03-02', 'AFC Youth', 1050000.00),
('Diego', 'Simeone', '1970-04-28', 'RFEF Pro', 950000.00),
('Carlo', 'Ancelotti', '1959-06-10', 'UEFA Pro', 1300000.00),
('Jose', 'Mourinho', '1963-01-26', 'FA Pro', 1500000.00),
('Ralf', 'Rangnick', '1958-06-29', 'AFC Pro', 850000.00),
('Niko', 'Kovac', '1971-10-23', 'DFB Youth', 900000.00),
('Julen', 'Lopetegui', '1966-08-28', 'UEFA Pro', 920000.00),
('Vincenzo', 'Montella', '1974-06-18', 'FIFA Pro', 800000.00),
('Mikel', 'Arteta', '1982-03-26', 'UEFA Pro', 950000.00);

INSERT INTO Players (team_id, first_name, last_name, birthdate, position) VALUES
(1, 'Lionel', 'Messi', '1987-06-24', 'Forward'),
(1, 'Sergio', 'Busquets', '1988-07-16', 'Midfielder'),
(1, 'Gerard', 'Pique', '1987-02-02', 'Defender'),
(1, 'Marc', 'Andre Ter Stegen', '1992-04-30', 'Goalkeeper'),
(1, 'Antoine', 'Griezmann', '1991-03-21', 'Forward'),
(2, 'Cristiano', 'Ronaldo', '1985-02-05', 'Forward'),
(2, 'Luka', 'Modric', '1985-09-09', 'Midfielder'),
(2, 'Sergio', 'Ramos', '1986-03-30', 'Defender'),
(2, 'Karim', 'Benzema', '1987-12-19', 'Forward'),
(2, 'Toni', 'Kroos', '1990-01-04', 'Midfielder'),
(3, 'Paul', 'Pogba', '1993-03-15', 'Midfielder'),
(3, 'Bruno', 'Fernandes', '1994-09-08', 'Midfielder'),
(3, 'Marcus', 'Rashford', '1997-10-31', 'Forward'),
(3, 'David', 'de Gea', '1990-11-07', 'Goalkeeper'),
(3, 'Harry', 'Maguire', '1993-03-05', 'Defender'),
(4, 'Robert', 'Lewandowski', '1988-08-21', 'Forward'),
(4, 'Joshua', 'Kimmich', '1995-02-08', 'Midfielder'),
(4, 'Thomas', 'Müller', '1989-09-13', 'Forward'),
(4, 'Manuel', 'Neuer', '1986-03-27', 'Goalkeeper'),
(4, 'Leon', 'Goretzka', '1995-02-06', 'Midfielder');
INSERT INTO Coach_Trainings (course_name, institution, certification_level) VALUES
('UEFA Pro License', 'UEFA', 'UEFA Pro'),
('AFC Coaching License', 'AFC', 'AFC Pro'),
('English Football Coaching', 'FA', 'FA Pro'),
('German Football Coaching', 'DFB', 'DFB Pro'),
('French Football Coaching', 'FFF', 'FFF Pro'),
('Spanish Football Coaching', 'RFEF', 'RFEF Pro'),
('Italian Football Coaching', 'FIGC', 'FIGC Pro'),
('Brazilian Football Coaching', 'CBF', 'CBF Pro'),
('Portuguese Football Coaching', 'FPF', 'FPF Pro'),
('AFC Youth Coaching', 'AFC', 'AFC Youth'),
('German Youth Coaching', 'DFB', 'DFB Youth'),
('Premier League Coaching', 'FA', 'FA Pro'),
('European Football Management', 'UEFA', 'UEFA Pro'),
('Football Analytics and Strategy', 'FIFA', 'FIFA Pro'),
('Advanced Football Coaching', 'UEFA', 'UEFA Advanced');
INSERT INTO coach_trainings_and_coaches (coach_id, training_id) VALUES
(1, 1),  -- Zinedine Zidane (coach_id 1) with Training 'UEFA Pro' (training_id 1)
(2, 2),  -- Pep Guardiola (coach_id 2) with Training 'AFC Pro' (training_id 2)
(3, 3),  -- Jürgen Klopp (coach_id 3) with Training 'FA Pro' (training_id 3)
(4, 4),  -- Hans-Dieter Flick (coach_id 4) with Training 'DFB Pro' (training_id 4)
(5, 1),  -- Thomas Tuchel (coach_id 5) with Training 'UEFA Pro' (training_id 1)
(6, 1),  -- Antonio Conte (coach_id 6) with Training 'UEFA Pro' (training_id 1)
(7, 5),  -- Mauricio Pochettino (coach_id 7) with Training 'AFC Youth' (training_id 5)
(8, 6),  -- Diego Simeone (coach_id 8) with Training 'RFEF Pro' (training_id 6)
(9, 1),  -- Carlo Ancelotti (coach_id 9) with Training 'UEFA Pro' (training_id 1)
(10, 3), -- Jose Mourinho (coach_id 10) with Training 'FA Pro' (training_id 3)
(11, 2), -- Ralf Rangnick (coach_id 11) with Training 'AFC Pro' (training_id 2)
(12, 4), -- Niko Kovac (coach_id 12) with Training 'DFB Youth' (training_id 4)
(13, 1), -- Julen Lopetegui (coach_id 13) with Training 'UEFA Pro' (training_id 1)
(14, 7), -- Vincenzo Montella (coach_id 14) with Training 'FIFA Pro' (training_id 7)
(15, 1); -- Mikel Arteta (coach_id 15) with Training 'UEFA Pro' (training_id 1)
INSERT INTO player_coaches (player_id, coach_id) VALUES
(1, 1), (1, 2),
(2, 1), (2, 3),
(3, 2), (3, 4),
(4, 2), (4, 5),
(5, 3), (5, 6),
(6, 3), (6, 7),
(7, 4), (7, 8),
(8, 4), (8, 9),
(9, 5), (9, 10),
(10, 5), (10, 11),
(11, 6), (11, 12),
(12, 6), (12, 13),
(13, 7), (13, 14),
(14, 7), (14, 15);
INSERT INTO coach_teams (coach_id, team_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);



-- query 1 List all players with their respective teams, sorted by the player's name in ascending order.
create table players_with_teams as
select p.first_name, p.last_name, t.name from Players p join Teams t on p.team_id = t.team_id order by p.last_name ASC ;

-- List the coaches, grouped and sorted by their training.
create table coaches_by_training as
select 
	c.certification_level as Certification,
    GROUP_CONCAT(CONCAT(c.first_name, ' ', c.last_name) SEPARATOR ', ') AS Coaches
from 
    Coaches c
group by
    certification
order by 
    certification asc;
    

-- List all players with their respective coaches.
create table players_and_their_coaches as
select
concat(players.first_name, ' ', players.last_name) as Players, 
group_concat(concat(coaches.first_name,' ', coaches.last_name) separator ', ') as Coaches
from player_coaches
join
	players on player_coaches.player_id = players.player_id
join
	coaches on player_coaches.coach_id = coaches.coach_id
GROUP BY players.player_id;   



-- Update the coach's salary by increasing it by 25%.
create table richer_coaches (
	coach_id int,
    coach_name varchar(255),
    salary decimal,
    primary key(coach_id))
as 
select
    coach_id,
    CONCAT(first_name, ' ', last_name) AS coach_name,
    salary AS salary
FROM Coaches;
update richer_coaches set salary = salary * 1.25 where coach_id > 0;

