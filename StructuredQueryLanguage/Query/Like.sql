/* LIKE */
-   Operator LIKE digunakan dalam pernyataan WHERE untuk mencari pola yang ditentukan pada kolom

-   pola yang sering digunakan bersama operator LIKE
    --> Tanda persen (%) mewakili nol, satu, atau beberapa karakter
    --> Tanda garis bawah ( _ ) mewakili satu karakter tunggal

Operator                        |   Deskripsi
WHERE (nama kolom) LIKE ‘a%’    |   Mencari nilai apa pun pada field kolom yang dimulai huruf “a” atau Anda bisa menggunakan huruf lainnya
WHERE (nama kolom) LIKE ‘%a’    |   Mencari nilai apa pun pada field kolom nama yang diakhiri huruf “a” / lainnya
WHERE (nama kolom) LIKE ‘%or%’  |   Mencari nilai apa pun pada field kolom yang di dalamnya terdapat huruf “or” atau lainnya
WHERE (nama kolom) LIKE ‘_r%’   |   Mencari nilai apa pun pada field kolom yang karakter keduanya huruf “r”
WHERE (nama kolom) LIKE ‘a_%’   |   Mencari nilai apa pun pada field kolom yang dimulai dengan huruf “a” dan panjangnya minimal dua karakter
WHERE (nama kolom) LIKE ‘a__%’  |   Mencari nilai apa pun pada field kolom yang dimulai dengan huruf “a” dan panjangnya minimal tiga karakter
WHERE (nama kolom) LIKE ‘a%o’   |   Mencari nilai apa pun pada field kolom yang dimulai huruf “a” dan diakhiri huruf “o”

SELECT kolom 1, kolom 2, …
FROM nama_tabel
WHERE kolom LIKE pola;

SELECT * 
FROM shinkansen_stations
WHERE Prefecture like 't%';

SELECT *
FROM shinkansen_stations
WHERE Prefecture like '%g';

SELECT *
FROM shinkansen_stations
WHERE Prefecture like '%yo%';

-- LIKE MULTIPLE condition
SELECT * 
FROM shinkansen_stations
WHERE (
	Station_Name LIKE 'h%'
	or
	Station_Name Like '%ke%'
);