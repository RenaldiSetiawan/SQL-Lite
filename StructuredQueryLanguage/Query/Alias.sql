/* ALIAS */
--  SQL dapat mengubah sementara baik nama tabel maupun nama kolom
    -   menggunakan pernyataan ALIAS (AS)

--  ALIAS pada SQL digunakan untuk memberi nama lain yang bersifat sementara pada tabel atau kolom dalam tabel
--  Penggunaan ALIAS tidak akan mengubah basis data yang asli

SELECT nama_kolom AS nama_alias
FROM nama_table;

SELECT Station_Name AS Nama_Stasiun
FROM shinkansen_stations;

-- Multipe ALIAS
SELECT Station_Name AS Nama_Stasiun, 
Year AS Tahun,
DistancefromTokyost AS Jarak_dari_Tokyo
FROM shinkansen_stations;