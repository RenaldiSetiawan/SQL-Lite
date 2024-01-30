/* OFFSET */
--  menemukan sebuah data yang bisa saja berada di awal, tengah, atau bahkan akhir dalam sebuah basis data
--  penggunaan OFFSET disandingkan dengan penggunaan LIMIT dan dapat saling melengkapi

--  Cara kerja OFFSET adalah untuk melompati sejumlah baris dimulai dari yang pertama sampai yang ditentukan
SELECT *
FROM shinkansen_stations
LIMIT 5
OFFSET 2;