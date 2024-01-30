/* DELETE */
--   menghapus tabel dari basis data yang sudah tidak diperlukan lagi

DELETE
FROM nama_tabel
WHERE nama_kolom = 'value'; -- value, bisa di isi dengan nilai spesifik untuk menghindari penghapusan data lain yg tidak di inginkan

-- Delete yang station_name nya = suna
DELETE
FROM shinkansen_stations
WHERE Station_Name = 'Suna';

-- Delete All Records
DELETE FROM table_name;

-- Delete TABLE, GUNAKAN DROP TABLE
DROP TABLE table_name;