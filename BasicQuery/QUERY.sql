SELECT * FROM shinkansen_stations;

/* INSERT */
INSERT INTO shinkansen_stations 
(Station_Name, Shinkansen_Line, Year, Prefecture, DistancefromTokyost, Company)
VALUES
('Konoha', 'Tokaido_Shinkansen', 1998, 'Jepang', 399.5, 'JR_Konoha'),
('Suna', 'Tokaido_Shinkansen', 1999, 'Jepang', 689.5, 'JR_Suna');

/* SELECT & FORM */
SELECT Station_Name
FROM shinkansen_stations;

SELECT Station_Name, Year 
FROM shinkansen_stations;
 
/* WHERE */
SELECT * 
FROM shinkansen_stations
WHERE DistancefromTokyost = 229.3;

SELECT * 
FROM shinkansen_stations
WHERE Station_Name = 'Tokyo';

/* AND - 0R - NOT */
SELECT *
FROM shinkansen_stations
WHERE Year = '1964'
AND Prefecture = 'Kanagawa';

SELECT *
FROM shinkansen_stations
WHERE Prefecture = 'Tokyo'
OR Prefecture = 'Kanagawa';

SELECT * 
FROM shinkansen_stations
WHERE NOT Year = '1964';

/* LIKE */
SELECT * 
FROM shinkansen_stations
WHERE Prefecture like 't%';

SELECT *
FROM shinkansen_stations
WHERE Prefecture like '%g';

SELECT *
FROM shinkansen_stations
WHERE Prefecture like '%yo%';

SELECT * 
FROM shinkansen_stations
WHERE (
	Station_Name LIKE 'h%'
	or
	Station_Name Like '%ke%'
);

/* ALIAS */
SELECT Station_Name AS Nama_Stasiun
FROM shinkansen_stations;

SELECT Station_Name AS Nama_Stasiun, 
Year AS Tahun,
DistancefromTokyost AS Jarak_dari_Tokyo
FROM shinkansen_stations;

/* UPDATE */
UPDATE shinkansen_stations
SET DistancefromTokyost = 123.4, Company = 'Tokyo_Com'
WHERE Station_Name = 'Tokyo'; 

UPDATE shinkansen_stations
SET Shinkansen_Line = 'Maintenance'
WHERE Prefecture = 'Tokyo';

/* ORDER BY */
SELECT Station_Name
FROM shinkansen_stations
ORDER BY Station_Name ASC;

SELECT Station_Name
FROM shinkansen_stations
ORDER BY Station_Name DESC;

/* LIMIT */
SELECT * 
FROM shinkansen_stations
LIMIT 5;

SELECT *
FROM shinkansen_stations
WHERE Prefecture='Jepang'
LIMIT 3;

/* OFFSET */
SELECT *
FROM shinkansen_stations
LIMIT 5
OFFSET 2;

/* DELETE */
DELETE
FROM shinkansen_stations
WHERE Station_Name = 'Suna';



