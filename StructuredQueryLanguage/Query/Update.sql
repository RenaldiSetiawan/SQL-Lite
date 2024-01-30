--  UPDATE adalah untuk mengubah nilai lama menjadi sebuah nilai baru pada sebuah basis data SQL
--  PDATE disandingkan dengan pernyataan WHERE untuk mengetahui nilai yang akan diubah

UPDATE table_name
SET column_name = newvalue
WHERE column_name = somevalue

-- UPDATE data DistancefromTokyost terdapat nilai 0, dan value company dimana station_name = Tokyo
UPDATE shinkansen_stations
SET DistancefromTokyost = 123.4, Company = 'Tokyo_Com'
WHERE Station_Name = 'Tokyo'; 

-- UPDATE Multiple Records
/* UPDATE nilai dari coloum Shinkansen_Line menjadi Maintenance
   untuk semua record where refecture = Tokyo */
UPDATE shinkansen_stations
SET Shinkansen_Line = 'Maintenance'
WHERE Prefecture = 'Tokyo';