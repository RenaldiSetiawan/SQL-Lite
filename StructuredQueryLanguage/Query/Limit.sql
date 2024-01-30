/* LIMIT */
-- Limit membatasi jumlah baris yang akan ditampilkan

SELECT *
FROM nama_table
LIMIT jumlah_baris_yg_dikembalikan

SELECT * 
FROM shinkansen_stations
LIMIT 5;

-- ADD a WHERE CLAUSE
SELECT *
FROM shinkansen_stations
WHERE Prefecture='Jepang'
LIMIT 3;