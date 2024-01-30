/* WHERE */
- Pada dasarnya pernyataan WHERE dapat digunakan pada kondisi apa pun serta dapat dipadukan dengan pernyataan lainnya

SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- NUMERIC
SELECT * 
FROM shinkansen_stations
WHERE DistancefromTokyost = 229.3;

-- NON NUMERIC
SELECT * 
FROM shinkansen_stations
WHERE Station_Name = 'Tokyo';