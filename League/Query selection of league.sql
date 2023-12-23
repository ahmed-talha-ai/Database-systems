-- Create league database
CREATE DATABASE League;

-- Use league database
USE League;

-- Create football schema
CREATE SCHEMA football;

-- Use football schema
USE League.football;

-- Create Stadium table
CREATE TABLE Stadium (
    stadium_id INT PRIMARY KEY,
    stadium_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Create Championship table
CREATE TABLE Championship (
    championship_id INT PRIMARY KEY,
    season_date DATE,
    championship_name VARCHAR(50) NOT NULL,
    winning_team_id INT,
    FOREIGN KEY (winning_team_id) REFERENCES football.Team(team_id)
);

-- Create Manager table
CREATE TABLE Manager (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(50) NOT NULL,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES football.Team(team_id)
);

-- Create Match table
CREATE TABLE Match (
    match_id INT PRIMARY KEY,
    home_team_id INT,
    away_team_id INT,
    championship_id INT,
    match_date DATE,
    stadium_id INT,
    referee_id INT,
    result VARCHAR(10),
    FOREIGN KEY (home_team_id) REFERENCES football.Team(team_id),
    FOREIGN KEY (away_team_id) REFERENCES football.Team(team_id),
    FOREIGN KEY (championship_id) REFERENCES football.Championship(championship_id),
    FOREIGN KEY (stadium_id) REFERENCES football.Stadium(stadium_id),
    FOREIGN KEY (referee_id) REFERENCES football.Referee(referee_id)
);

-- Create Team table
CREATE TABLE Team (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50) NOT NULL,
    trophies INT
);

-- Create Players table
CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50) NOT NULL,
    player_nationality VARCHAR(50),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES football.Team(team_id)
);

-- Create Goals table
CREATE TABLE Goals (
    goal_id INT PRIMARY KEY,
    player_id INT,
    match_id INT,
    time INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (match_id) REFERENCES Match(match_id)
);

-- Create Referee table
CREATE TABLE Referee (
    referee_id INT PRIMARY KEY,
    referee_name VARCHAR(50) NOT NULL,
    referee_nationality VARCHAR(50)
);

-- Create Injury table
CREATE TABLE Injury (
    injury_id INT PRIMARY KEY,
    match_id INT,
    player_id INT,
    description VARCHAR(255),
    minute INT,
    FOREIGN KEY (match_id) REFERENCES Match(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

-- Create Cards table
CREATE TABLE Cards (
    card_id INT PRIMARY KEY,
    match_id INT,
    player_id INT,
    card_type VARCHAR(10),
    minute INT,
    FOREIGN KEY (match_id) REFERENCES Match(match_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

-- Insertion:

-- Insert data into Stadium table
INSERT INTO football.Stadium (stadium_id, stadium_name, city) VALUES
    (75, 'Old Trafford', 'Manchester'),
    (76, 'Camp Nou', 'Barcelona'),
    (77, 'Allianz Arena', 'Munich'),
    (78, 'Anfield', 'Liverpool'),
    (79, 'Santiago Bernabeu', 'Madrid'),
    (80, 'San Siro', 'Milan'),
    (81, 'Signal Iduna Park', 'Dortmund'),
    (82, 'Emirates Stadium', 'London'),
    (83, 'Etihad Stadium', 'Manchester'),
    (84, 'Stamford Bridge', 'London'),
    (85, 'Parc des Princes', 'Paris'),
    (86, 'Wembley Stadium', 'London'),
    (87, 'Maracanã Stadium', 'Rio de Janeiro'),
    (88, 'Stadio Olimpico', 'Rome'),
    (89, 'Amsterdam Arena', 'Amsterdam'),
    (90, 'Celtic Park', 'Glasgow'),
    (91, 'Estádio do Dragão', 'Porto'),
    (92, 'San Mamés Stadium', 'Bilbao'),
    (93, 'King Power Stadium', 'Leicester'),
    (94, 'Vodafone Park', 'Istanbul'),
    (95, 'Stade Vélodrome', 'Marseille');

--1)
alter table football.Championship
alter column season_date nvarchar(15)

-- Insert data into Championship table
INSERT INTO football.Championship (championship_id, season_date, championship_name, winning_team_id) VALUES
    (75, '2022-2023', 'Premier League', 75),
    (76, '2023-2024', 'La Liga', 76),
    (77, '2024-2025', 'Bundesliga', 77),
    (78, '2025-2026', 'Serie A', 78),
    (79, '2026-2027', 'Ligue 1', 79),
    (80, '2027-2028', 'Primeira Liga', 75),
    (81, '2028-2029', 'Eredivisie', 76),
    (82, '2029-2030', 'Scottish Premiership', 77),
    (83, '2030-2031', 'Super Lig', 78),
    (84, '2031-2032', 'Russian Premier League', 79),
    (85, '2032-2033', 'Belgian Pro League', 75),
    (86, '2033-2034', 'Brazilian Serie A', 76),
    (87, '2034-2035', 'Italian Serie B', 77),
    (88, '2035-2036', 'Championship (England)', 78),
    (89, '2036-2037', 'Major League Soccer (MLS)', 79),
    (90, '2037-2038', 'Argentine Primera División', 75),
    (91, '2038-2039', 'Greek Super League', 76),
    (92, '2039-2040', 'Swiss Super League', 77),
    (93, '2040-2041', 'Danish Superliga', 78),
    (94, '2041-2042', 'Norwegian Eliteserien', 79),
    (95, '2042-2043', 'Chinese Super League', 75);

-- Insert data into Manager table
INSERT INTO football.Manager (manager_id, manager_name, team_id) VALUES
    (78, 'Zinedine Zidane', 78),
    (79, 'Ronald Koeman', 79),
    (80, 'Hans-Dieter Flick', 80),
    (81, 'Ole Gunnar Solskjaer', 81),
    (82, 'Andrea Pirlo', 82),
    (83, 'Mauricio Pochettino', 83),
    (84, 'Stefano Pioli', 84),
    (85, 'Erik ten Hag', 85),
    (86, 'Thomas Tuchel', 86),
    (87, 'Jurgen Klopp', 87),
    (88, 'Antonio Conte', 88),
    (89, 'Mikel Arteta', 89),
    (90, 'Edin Terzic', 90),
    (91, 'Diego Simeone', 91),
    (92, 'Pep Guardiola', 92),
    (93, 'Jose Mourinho', 93),
    (94, 'Nuno Espirito Santo', 94),
    (95, 'Gennaro Gattuso', 95),
    (96, 'Carlo Ancelotti', 75),
    (97, 'Luciano Spalletti', 76),
    (98, 'Ryan Mason', 77);


-- Insert data into Match table
INSERT INTO football.Match (match_id, home_team_id, away_team_id, championship_id, match_date, stadium_id, referee_id, result) VALUES
    (75, 75, 76, 75, '2023-01-01', 75, 75, 'Home Win'),
    (76, 76, 77, 76, '2023-02-01', 76, 76, 'Draw'),
    (77, 77, 75, 77, '2023-03-01', 77, 77, 'Away Win'),
    (78, 78, 79, 78, '2023-04-01', 78, 78, 'Home Win'),
    (79, 79, 80, 79, '2023-05-01', 79, 79, 'Draw'),
    (80, 80, 81, 80, '2023-06-01', 80, 80, 'Away Win'),
    (81, 81, 82, 81, '2023-07-01', 81, 81, 'Home Win'),
    (82, 82, 83, 82, '2023-08-01', 82, 82, 'Draw'),
    (83, 83, 84, 83, '2023-09-01', 83, 83, 'Away Win'),
    (84, 84, 85, 84, '2023-10-01', 84, 84, 'Home Win'),
    (85, 85, 86, 85, '2023-11-01', 85, 85, 'Draw'),
    (86, 86, 87, 86, '2023-12-01', 86, 86, 'Away Win'),
    (87, 87, 88, 87, '2024-01-01', 87, 87, 'Home Win'),
    (88, 88, 89, 88, '2024-02-01', 88, 88, 'Draw'),
    (89, 89, 90, 89, '2024-03-01', 89, 89, 'Away Win'),
    (90, 90, 91, 90, '2024-04-01', 90, 90, 'Home Win'),
    (91, 91, 92, 91, '2024-05-01', 91, 91, 'Draw'),
    (92, 92, 93, 92, '2024-06-01', 92, 92, 'Away Win'),
    (93, 93, 94, 93, '2024-07-01', 93, 93, 'Home Win'),
    (94, 94, 95, 94, '2024-08-01', 94, 94, 'Draw'),
    (95, 95, 88, 95, '2024-09-01', 95, 95, 'Away Win');

-- Insert data into Team table
INSERT INTO football.Team (team_id, team_name, trophies) VALUES
    (75, 'Team A', 5),
    (76, 'Team B', 3),
    (77, 'Team C', 7),
    (78, 'Real Madrid', 34),
    (79, 'FC Barcelona', 26),
    (80, 'Bayern Munich', 31),
    (81, 'Manchester United', 66),
    (82, 'Juventus', 36),
    (83, 'Paris Saint-Germain', 42),
    (84, 'AC Milan', 18),
    (85, 'Ajax', 33),
    (86, 'Chelsea', 22),
    (87, 'Liverpool', 19),
    (88, 'Inter Milan', 18),
    (89, 'Arsenal', 30),
    (90, 'Borussia Dortmund', 10),
    (91, 'Atletico Madrid', 11),
    (92, 'Manchester City', 28),
    (93, 'Roma', 3),
    (94, 'Tottenham Hotspur', 17),
    (95, 'Napoli', 9);

-- Insert additional data into Players table with real data
INSERT INTO football.Players VALUES
    (76, 'Aly Ahmed', 'Egyptian', 10),
    (77, 'Carmen Rodriguez', 'Spanish', 15),
    (78, 'Tariq Metwaly', 'Egyptian', 8),
    (79, 'Lionel Messi', 'Argentinian', 75),
    (80, 'Ahmed Abdelwahab', 'Egyptian', 5),
    (81, 'Nora Samy', 'Egyptian', 12),
    (82, 'Omer Sayed', 'Turkish', 6),
    (83, 'Salma Shwban', 'Egyptian', 7),
    (84, 'Ahmad Hatem', 'Egyptian', 5),
    (85, 'Hana Saleh', 'Egyptian', 9),
    (86, 'Amr Kotamy', 'Egyptian', 3),
    (87, 'Sara Mokhtar', 'Egyptian', 6),
    (88, 'Khaled Hatem', 'Egyptian', 2),
    (89, 'Youssef Mahmoud', 'Egyptian', 1),
    (90, 'Nadia Zahran', 'Egyptian', 4),
    (91, 'Karim Ibrahim', 'Egyptian', 3),
    (92, 'Aya Ali', 'Egyptian', 8),
    (93, 'Ramy Elsayed', 'Egyptian', 7),
    (94, 'Salwa Salah', 'Egyptian', 11),
    (95, 'Rafik Mokhtar', 'Egyptian', 6),
    (96, 'Laila Samy', 'Egyptian', 5),
    (97, 'Karim Hatem', 'Egyptian', 2),
    (98, 'Amira Gamal', 'Egyptian', 84),
    (99, 'Ahmad Farouk', 'Egyptian', 4),
    (100, 'Safia Khalid', 'Egyptian', 7),
    (101, 'Mido Sayed', 'Egyptian', 6),
    (102, 'Lina Fathy', 'Egyptian', 80),
    (103, 'Hussein Nasser', 'Egyptian', 5),
    (104, 'Hala Kotamy', 'Egyptian', 4),
    (105, 'Sherif Mokhtar', 'Egyptian', 90),
    (106, 'Mona Shafik', 'Egyptian', 95),
    (107, 'Khaled Metwaly', 'Egyptian', 6),
    (108, 'Eman Mokhtar', 'Egyptian', 8),
    (109, 'Adel Sayed', 'Egyptian', 3),
    (110, 'Soha Hossam', 'Egyptian', 7),
    (111, 'Hassan Ali', 'Egyptian', 4),
    (112, 'Mona Tarek', 'Egyptian', 9),
    (113, 'Ashraf Salah', 'Egyptian', 6),
    (114, 'Nadia Mahmoud', 'Egyptian', 8),
    (115, 'Wael Samir', 'Egyptian', 7),
    (116, 'Layla Elsayed', 'Egyptian', 6),
    (117, 'Ramy Abdelwahab', 'Egyptian', 5),
    (118, 'Yasmin Adel', 'Egyptian', 4),
    (119, 'Ahmad Sayed', 'Egyptian', 3),
    (120, 'Noura Amr', 'Egyptian', 2),
    (121, 'Ali Ahmed', 'Egyptian', 1),
    (122, 'Eman Samy', 'Egyptian', 10),
    (123, 'Ahmad Zahran', 'Egyptian', 9),
    (124, 'Sara Sherif', 'Egyptian', 8),
    (125, 'Mido Tarek', 'Egyptian', 7),
    (126, 'Nadia Hossam', 'Egyptian', 6),
    (127, 'Khaled Ashraf', 'Egyptian', 5),
    (128, 'Salma Adel', 'Egyptian', 4),
    (129, 'Sherif Amr', 'Egyptian', 3),
    (130, 'Layla Ahmed', 'Egyptian', 2),
    (131, 'Ramy Hossam', 'Egyptian', 1),
    (132, 'Aya Ahmed', 'Egyptian', 10),
    (133, 'Carmen Metwaly', 'Spanish', 15),
    (134, 'Tariq Yamal', 'Egyptian', 8),
    (135, 'Lionel Sanchez', 'Argentinian', 90),
    (136, 'Ahmed Abdelwahab', 'Egyptian', 5),
    (137, 'Nora Samy', 'Egyptian', 12),
    (138, 'Omer Sayed', 'Turkish', 6),
    (139, 'Salma Shwban', 'Egyptian', 75),
    (140, 'Ahmad Hatem', 'Egyptian', 75),
    (141, 'Hana Saleh', 'Egyptian', 91),
    (142, 'Amr Kotamy', 'Egyptian', 83),
    (143, 'Sara Mokhtar', 'Egyptian', 76),
    (144, 'Khaled Hatem', 'Egyptian', 92),
    (145, 'Youssef Mahmoud', 'Egyptian', 91),
    (146, 'Nadia Zahran', 'Egyptian', 84),
    (147, 'Karim Ibrahim', 'Egyptian', 83),
    (148, 'Aya Ali', 'Egyptian', 88),
    (149, 'Ramy Elsayed', 'Egyptian', 7),
    (150, 'Salwa Salah', 'Egyptian', 91),
    (162, 'Hassan Ali', 'Egyptian', 90),
    (163, 'Mona Tarek', 'Egyptian', 77),
    (164, 'Ashraf Salah', 'Egyptian', 75),
    (165, 'Nadia Mahmoud', 'Egyptian', 78),
    (166, 'Wael Samir', 'Egyptian', 92),
    (167, 'Layla Elsayed', 'Egyptian', 76),
    (168, 'Ramy Abdelwahab', 'Egyptian', 85),
    (169, 'Yasmin Adel', 'Egyptian', 94),
    (170, 'Ahmad Sayed', 'Egyptian', 79),
    (171, 'Noura Amr', 'Egyptian', 77),
    (172, 'Ali Ahmed', 'Egyptian', 81),
    (173, 'Eman Samy', 'Egyptian', 94),
    (174, 'Ahmad Zahran', 'Egyptian', 93),
    (175, 'Sara Sherif', 'Egyptian', 84),
    (176, 'Mido Tarek', 'Egyptian', 76),
    (177, 'Nadia Hossam', 'Egyptian', 76),
    (178, 'Khaled Ashraf', 'Egyptian', 75),
    (179, 'Salma Adel', 'Egyptian', 75),
    (180, 'Sherif Amr', 'Egyptian', 75),
    (181, 'Layla Ahmed', 'Egyptian', 92),
    (182, 'Ramy Hossam', 'Egyptian', 81);

-- ... add more rows ...

-- Insert data into Goals table
INSERT INTO football.Goals (goal_id, player_id, match_id, time) VALUES
    (98, 21, 86, 15),
    (99, 22, 87, 23),
    (100, 23, 88, 60),
    (101, 24, 89, 75),
    (102, 25, 90, 80),
    (103, 26, 91, 35),
    (104, 27, 92, 42),
    (105, 28, 93, 18),
    (106, 29, 94, 22),
    (107, 30, 95, 55),
    (108, 31, 88, 12),
    (109, 32, 89, 38),
    (110, 33, 90, 58),
    (111, 34, 91, 70),
    (112, 35, 92, 82),
    (113, 36, 93, 44),
    (114, 37, 94, 52),
    (115, 38, 95, 25),
    (116, 39, 88, 32),
    (117, 40, 89, 60),
    (118, 41, 90, 22),
    (119, 42, 91, 37),
    (120, 43, 92, 44),
    (121, 44, 93, 19),
    (122, 45, 94, 27),
    (123, 46, 95, 58),
    (124, 47, 88, 70),
    (125, 48, 89, 82),
    (126, 49, 90, 44),
    (127, 50, 91, 52);

	-- Insert data into Referee table
INSERT INTO football.Referee (referee_id, referee_name, referee_nationality) VALUES
(75, 'Jhonathan hulk', 'England'),
    (76, 'Hover Erik', 'France'),
    (77, 'Mark Marsheniak', 'Poland'),
    (78, 'Elena Rodriguez', 'Spain'),
    (79, 'Andreas Müller', 'Germany'),
    (80, 'Giulia Rossi', 'Italy'),
    (81, 'Mikhail Ivanov', 'Russia'),
    (82, 'Sofia Kowalski', 'Poland'),
    (83, 'Lucas Silva', 'Brazil'),
    (84, 'Aisha Rahman', 'India'),
    (85, 'Chang Min-ho', 'South Korea'),
    (86, 'Makoto Tanaka', 'Japan'),
    (87, 'Mia Chen', 'China'),
    (88, 'Mateo Gutierrez', 'Mexico'),
    (89, 'Isabella Fernandez', 'Argentina'),
    (90, 'Mohammed Al-Farsi', 'Saudi Arabia'),
    (91, 'Zara Ali', 'Pakistan'),
    (92, 'Yuki Takahashi', 'Japan'),
    (93, 'Fatima Ibrahim', 'Egypt'),
    (94, 'Oscar Gonzalez', 'Spain'),
    (95, 'Lila Patel', 'India'),
    (96, 'Seung-hoon Kim', 'South Korea');



-- Insert data into Injury table
INSERT INTO football.Injury (injury_id, match_id, player_id, description, minute) VALUES
    (78, 78, 1, 'Knee injury', 10),
    (79, 79, 2, 'Ankle sprain', 25),
    (80, 80, 3, 'Hamstring strain', 18),
    (81, 81, 4, 'Concussion', 30),
    (82, 82, 5, 'Groin injury', 42),
    (83, 83, 6, 'Fractured leg', 55),
    (84, 84, 7, 'Shoulder dislocation', 12),
    (85, 85, 8, 'Calf strain', 28),
    (86, 86, 9, 'Hip injury', 37),
    (87, 87, 10, 'Back pain', 20),
    (88, 88, 11, 'Thigh contusion', 15),
    (89, 89, 12, 'Hand injury', 22),
    (90, 90, 13, 'Foot sprain', 40),
    (91, 91, 14, 'Rib fracture', 33),
    (92, 92, 15, 'Wrist injury', 48),
    (93, 93, 16, 'Neck strain', 28),
    (94, 94, 17, 'Elbow dislocation', 36),
    (95, 95, 18, 'Facial injury', 10),
    (96, 84, 19, 'Achilles tendonitis', 20),
    (97, 85, 20, 'Shin splints', 25),
    (98, 86, 21, 'Hip flexor strain', 15),
    (99, 87, 22, 'Ankle fracture', 40),
    (100, 88, 23, 'Sprained wrist', 32),
    (101, 89, 24, 'Knee contusion', 18),
    (102, 90, 25, 'Calf contusion', 22),
    (103, 91, 26, 'Toe injury', 35),
    (104, 92, 27, 'Hand contusion', 30),
    (105, 93, 28, 'Facial laceration', 38),
    (106, 94, 29, 'Groin strain', 28),
    (107, 95, 30, 'Concussion', 45);

-- Insert additional data into Cards table with real data
INSERT INTO football.Cards (card_id, match_id, player_id, card_type, minute) VALUES
    (78, 75, 84, 'Yellow', 22),
    (79, 76, 112, 'Red', 35),
    (80, 77, 56, 'Red', 18),
    (81, 78, 3, 'Yellow', 55),
    (82, 79, 92, 'Yellow', 40),
    (83, 75, 147, 'Yellow', 28),
    (84, 76, 41, 'Yellow', 15),
    (85, 75, 99, 'Red', 50),
    (86, 8, 73, 'Yellow', 32),
    (87, 7, 120, 'Red', 60),
    (88, 85, 14, 'Yellow', 42),
    (89, 9, 54, 'Yellow', 48),
    (90, 10, 135, 'Yellow', 25),
    (91, 7, 77, 'Yellow', 30),
    (92, 89, 101, 'Yellow', 22),
    (93, 90, 49, 'Red', 15),
    (94, 2, 37, 'Yellow', 20),
    (95, 1, 111, 'Yellow', 38),
    (96, 5, 68, 'Yellow', 28),
    (97, 6, 82, 'Yellow', 42),
    (98, 95, 29, 'Yellow', 18),
    (99, 9, 69, 'Red', 32),
    (100, 90, 59, 'Yellow', 35),
    (101, 77, 115, 'Red', 40),
    (102, 9, 85, 'Yellow', 25),
    (103, 79, 43, 'Red', 30),
    (104, 80, 94, 'Yellow', 22),
    (105, 10, 19, 'Yellow', 15),
    (106, 2, 120, 'Yellow', 20),
    (107, 3, 32, 'Yellow', 38),
    (108, 84, 6, 'Yellow', 28),
    (109, 85, 53, 'Red', 42),
    (110, 86, 121, 'Red', 18),
    (111, 87, 2, 'Red', 32),
    (112, 88, 76, 'Yellow', 35),
    (113, 89, 140, 'Red', 40),
    (114, 90, 45, 'Yellow', 25),
    (115, 76, 11, 'Yellow', 30),
    (116, 92, 62, 'Yellow', 22),
    (117, 93, 144, 'Yellow', 15),
    (118, 94, 75, 'Yellow', 20),
    (119, 7, 30, 'Yellow', 38),
    (120, 75, 112, 'Yellow', 28),
    (121, 76, 8, 'Red', 42),
    (122, 77, 128, 'Yellow', 18),
    (123, 78, 36, 'Red', 32),
    (124, 79, 57, 'Yellow', 35),
    (125, 80, 92, 'Red', 40),
    (126, 81, 16, 'Yellow', 25),
    (127, 82, 78, 'Red', 30),
    (128, 83, 104, 'Yellow', 22),
    (129, 84, 19, 'Yellow', 15),
    (130, 85, 42, 'Yellow', 20),
    (131, 86, 76, 'Yellow', 38),
    (132, 87, 97, 'Yellow', 28),
    (133, 88, 51, 'Red', 42),
    (134, 89, 63, 'Yellow', 18),
    (135, 90, 122, 'Red', 32),
    (136, 91, 17, 'Yellow', 35),
    (137, 92, 104, 'Yellow', 40),
    (138, 93, 10, 'Yellow', 25),
    (139, 94, 129, 'Yellow', 30);



--1)Select all data at table cards:
select * from football.Cards;

--2)Select all stadiums in a specific city:
SELECT * FROM football.Stadium WHERE city = 'Cairo';

--3)Select championships ordered by season date:
SELECT * FROM football.Championship ORDER BY season_date;

--4)Select matches with a specific result:
SELECT * FROM football.Match WHERE result = '6-1';

--5)Select managers and their teams:
SELECT Manager.manager_name, Team.team_name
FROM football.Manager INNER JOIN football.Team 
ON Manager.team_id = Team.team_id;

--6)Select players and their nationalities for a specific team:
SELECT Players.player_name, Players.player_nationality, Team.team_name
FROM football.Players INNER JOIN football.Team
ON Players.team_id = Team.team_id
WHERE Team.team_name = 'Alahly';

--7)Select goals scored in a specific match:
SELECT Goals.time, Players.player_name
FROM football.Goals INNER JOIN football.Players
ON Goals.player_id = Players.player_id
WHERE Goals.match_id = 4;

--8)Select referees and their nationalities:
SELECT Referee.referee_name, Referee.referee_nationality
FROM football.Referee;

--9)Select injuries with descriptions containing a specific word:
SELECT * FROM football.Injury WHERE description LIKE '%Heart%';

--10)Select cards with a specific type and ordered by minute:
SELECT * FROM football.Cards WHERE card_type = 'yellow' ORDER BY minute;

--11)Select the team with the most trophies:
SELECT team_name, trophies FROM football.Team ORDER BY trophies DESC OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

--12)Select matches with a specific result and a specific stadium:
SELECT * FROM football.Match
WHERE result = '2-2' AND stadium_id = 5;

--13)Select the top 10 players with the most goals:
SELECT TOP 10 player_name, COUNT(Goals.goal_id) AS goals_count
FROM football.Players LEFT JOIN football.Goals
ON Players.player_id = Goals.player_id
GROUP BY Players.player_name
ORDER BY goals_count DESC;

--14)Select players with more than 3 goals:
SELECT Players.player_name, COUNT(Goals.goal_id) AS goals_count
FROM football.Players LEFT JOIN football.Goals
ON Players.player_id = Goals.player_id
GROUP BY Players.player_name
HAVING COUNT(Goals.goal_id) > 3;

--15)Select matches with referees from a specific nationality:
SELECT * 
FROM football.Match INNER JOIN football.Referee
ON Match.referee_id = Referee.referee_id
WHERE Referee.referee_nationality = 'Egyption';

--16)Select players and the count of goals they scored:
SELECT Players.player_name, COUNT(Goals.goal_id) AS goals_count
FROM football.Players LEFT JOIN football.Goals
ON Players.player_id = Goals.player_id
GROUP BY Players.player_name;

--17)Select matches with more than 3 goals scored:
SELECT Match.match_id,Championship.championship_name,Team.team_name, COUNT(Goals.goal_id) AS goals_count
FROM football.Match LEFT JOIN football.Goals
ON Match.match_id = Goals.match_id  Left join football.Championship
on Match.championship_id = Championship.championship_id Left join football.Team
on ( Match.away_team_id=Team.team_id) or (Match.home_team_id=Team.team_id)
GROUP BY Match.match_id , Championship.championship_name, Team.team_name
HAVING COUNT(Goals.goal_id) > 3;

--18)Select players and their teams with at least one injury:
SELECT Players.player_name, Team.team_name , Injury.description
FROM football.Players INNER JOIN football.Team
ON Players.team_id = Team.team_id INNER JOIN football.Injury 
ON Players.player_id = Injury.player_id
GROUP BY Players.player_name, Team.team_name ,Injury.description;

--19)Select players with the highest number of cards:
SELECT Players.player_id, Players.player_name, COUNT(Cards.card_id) AS cards_count
FROM football.Players LEFT JOIN football.Cards
ON Players.player_id = Cards.player_id
GROUP BY Players.player_name ,Players.player_id
ORDER BY cards_count DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

--20)Select championships with winning teams and their managers:
SELECT Championship.championship_name, Team.team_name, Manager.manager_name
FROM football.Championship LEFT JOIN football.Team
ON Championship.winning_team_id = Team.team_id LEFT JOIN football.Manager
ON Team.team_id = Manager.team_id;


-- Alter Table or Column Statements:

-- 1) Alter the Stadium table to add a new column capacity:
ALTER TABLE football.Stadium
ADD capacity INT;

-- 2) Alter the Championship table to modify the season_date column:
ALTER TABLE football.Championship
ALTER COLUMN season_date NVARCHAR(20);

-- 3) Alter the Manager table to rename the column manager_name to coach_name:
ALTER TABLE football.Manager
RENAME COLUMN manager_name TO coach_name;

-- 4) Alter the Match table to add a new foreign key reference to the Referee table:
ALTER TABLE football.Match
ADD CONSTRAINT fk_referee
FOREIGN KEY (referee_id) REFERENCES football.Referee(referee_id);

-- 5) Alter the Team table to add a unique constraint on the team_name column:
ALTER TABLE football.Team
ADD CONSTRAINT unique_team_name UNIQUE (team_name);

-- 6) Alter the Players table to drop the foreign key constraint:
ALTER TABLE football.Players
DROP team_id;


--Update Statements:
--1)Update the Championship table to set the winning_team_id for a specific championship:
UPDATE football.Championship
SET winning_team_id = 1
WHERE championship_id = 1;

--2)Update the Team table to increase the number of trophies:
UPDATE football.Team
SET trophies = trophies + 1
WHERE team_id = 1;

--3)Update the Players table to change the player_nationality:
UPDATE football.Players
SET player_nationality = 'New Nationality'
WHERE player_id = 1;

--4)Update the Stadium table to change the city for a specific stadium:
UPDATE football.Stadium
SET city = 'New City'
WHERE stadium_id = 1;

--5)Update the Goals table to modify the time of a goal:
UPDATE football.Goals
SET time = 40
WHERE goal_id = 1;

--6)Update the Referee table to change the referee_nationality:
UPDATE Referee
SET referee_nationality = 'New Nationality'
WHERE referee_id = 1;

--Drop Statements:
--1)Drop the Injury table:
DROP TABLE Injury;

--2)Drop the Cards table:
DROP TABLE Cards;

--3)Drop the Referee table:
DROP TABLE Referee;

--4)Drop the Goals table:
DROP TABLE Goals;

--5)Drop the Players table:
DROP TABLE Players;

--6)Drop the Manager table:
DROP TABLE Manager;

--Drop Column Statements:
--7)drop the trophies column from the Team table:
ALTER TABLE Team
DROP COLUMN trophies;

--Delete Statements:
--1)Delete a specific record from the Manager table:
DELETE FROM football.Manager
WHERE manager_id = 1;

--2)Delete all records from the Players table for a specific team:
DELETE FROM football.Players
WHERE team_id = 1;

--3)Delete a specific record from the Stadium table:
DELETE FROM football.Stadium
WHERE stadium_id = 1;

--4)Delete records from the Goals table for a specific player:
DELETE FROM football.Goals
WHERE player_id = 1;

--5)Delete records from the Match table for a specific championship:
DELETE FROM football.Match
WHERE championship_id = 1;

--6)Delete records from the Championship table for a specific season:
DELETE FROM football.Championship
WHERE season_date = '2023-2024';