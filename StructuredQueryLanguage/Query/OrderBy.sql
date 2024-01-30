/* ORDER BY */
--  ser perlu mengurutkan sebuah data baik dari urutan kecil ke besar ataupun sebaliknya
--  ORDER BY akan membantu user dalam proses pengurutan data

- ascending (ASC) = A - Z, dari kecil ke besar
- descending (DESC) = Z - A, Besar ke kecil

SELECT *
FROM nama+tabel
ORDER BY nama_kolom ASC;

-- asc
SELECT Station_Name
FROM shinkansen_stations
ORDER BY Station_Name ASC;

-- desc
SELECT Station_Name
FROM shinkansen_stations
ORDER BY Station_Name DESC;