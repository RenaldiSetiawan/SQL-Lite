1. WHERE - AND
-   operator AND. 
    Ia hanya akan menampilkan data yang memenuhi kedua kondisi tersebut
-   atatan: Untuk operator AND, kolom yang digunakan tidak boleh sama, 
    contohnya WHERE year = … AND year = …

SELECT *
FROM shinkansen_stations
WHERE Year = '1964'
AND Prefecture = 'Kanagawa';

2. WHERE - OR
-   Ia akan menampilkan data yang memenuhi salah satu kondisi tersebut
-   operator OR dapat menggunakan nama kolom yang sama pada konsol


SELECT *
FROM shinkansen_stations
WHERE Prefecture = 'Tokyo'
OR Prefecture = 'Kanagawa';

3. WHERE - NOT
-   ingin menampilkan seluruh data selain data yang memiliki nilai year=1964

SELECT * 
FROM shinkansen_stations
WHERE NOT Year = '1964';