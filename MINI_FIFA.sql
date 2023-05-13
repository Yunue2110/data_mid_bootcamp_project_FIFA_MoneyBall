CREATE DATABASE FIFA21;  ## CREACION DE MI DATA BASE
USE FIFA21;

##CREACION DE MIS TABLAS 

DROP TABLE PLAYER;
CREATE TABLE PLAYER (
id_players INT(64) AUTO_INCREMENT PRIMARY KEY ,
full_name_players VARCHAR (200),
age INT(11),
weight INT (64) ,
contract VARCHAR(200),
joined VARCHAR(200),
value VARCHAR (64),
wage varchar(64),
release_clause INT(64),
ova INT(64),
bov INT(64),
bp VARCHAR(45),
foot VARCHAR(36),
attacking INT(64),
skill INT(64),
movement INT(64),
mentality INT(64),
defending INT(64),
base_stats INT(64),
total_stats INT(64),
id_nationality INT(64),
id_club INT(64),
id_position INT(64)
);


CREATE TABLE GAME (
id_players INT (64) AUTO_INCREMENT PRIMARY KEY UNIQUE,
id_club  INT(64) ,
crossing int(64),
finishing INT(64),
heading_accuracy INT (64),
short_passing INT (64),
volleys INT (64),
dribbling int(64),
curve INT(64),
fk_accuracy int(64),
long_passing INT(64),
ball_control INT(64),
interceptions INT(64),
positioning INT(64),
penalties  INT(64),
marking INT(64),
standing_tackle INT (64),
goalkeeping INT(64),
sliding_tackle INT(64),
gk_diving INT(64),
gk_handling INT(64),
gk_kicking INT(64),
gk_positioning INT (64),
gk_reflexes INT(64),
shot_power int(64),
long_shots INT(64)
);

 CREATE TABLE SKILLS (
 id_players INT (64) AUTO_INCREMENT PRIMARY KEY UNIQUE,
 agility float ,
 reactions INT (64),
 balance  INT (64),
 jumping INT(64),
 stamina INT(64),
 strength INT(64),
aggression INT(64),
composure FLOAT,
vision INT(64),
sprint_speed INT(64),
acceleration INT(64), 
dribbling INT(64)
);
drop table CLUB;
CREATE TABLE CLUB (
id_club INT(64) AUTO_INCREMENT PRIMARY KEY UNIQUE,
club VARCHAR (45),
club_logo BLOB
);
DROP TABLE NATIONALITY; 
CREATE TABLE NATIONALITY (
id_nationality INT (64) AUTO_INCREMENT PRIMARY KEY UNIQUE,
nationality VARCHAR(45),
flag_photo 	BLOB
);

DROP TABLE POSITION;
CREATE TABLE POSITION (
id_position INT (64) AUTO_INCREMENT PRIMARY KEY UNIQUE,
position VARCHAR(45)
);

##inserte los datos del primer valor de mi lista . Ya que mi documento tuvo errores y no puedo pasarlo.
INSERT INTO `FIFA21`.`PLAYER`
(`id_players`,
`full_name_players`,
`age`,
`weight`,
`contract`,
`joined`,
`value`,
`wage`,
`release_clause`,
`ova`,
`bov`,
`foot`,
`attacking`,
`skill`,
`movement`,
`mentality`,
`defending`,
`base_stats`,
`total_stats`,
`id_nationality`,
`id_club`,
`id_position`)
VALUES (
50598,
"D. Bent",
33,
161,
"Jun 30, 2018 On Loan",
"Jul 1, 2015",
"1.1M",
"10K",
0,
70,
69,
"Right",
325,
285,
335,
265,
60,
337,
1645,
24,
196,
1);

SELECT * FROM PLAYER;
##---JOIN

SELECT *
FROM skills as s
INNER JOIN player as p
ON s.id_players = p.id_players
INNER JOIN NATIONALITY as n
ON p.id_nationality = n.id_nationality
;

