/* CREATE NEW TABLE */
CREATE TABLE "tabel_penumpang" (
	"No"	INTEGER,
	"Nama"	CHAR,
	"Jenis Kelamin"	INTEGER,
	"Usia"	INTEGER,
	"Riwayat Penyakit"	CHAR
);

SELECT *
FROM tabel_penumpang;

/*DELETE*/
DELETE TABLE tabel_penumpang;

/*VIEW*/
CREATE VIEW [Penumpang] AS
SELECT No, Nama
FROM tabel_penumpang
where Riwayat = 'Asma';

/* CREATE TABLE FOR DML */
CREATE TABLE "daftar_penumpang" (
	"Nama_Depan"	Char,
	"Nama_Belakang"	CHAR,
	"Umur"	INTEGER,
	"Riwayat_Penyakit"	CHAR,
	"Departure" CHAR,
	"Arrival" CHAR
);

SELECT * FROM daftar_penumpang;

SELECT * FROM daftar_penumpang
WHERE Departure = 'Surabaya';

SELECT Nama_Depan, Umur, Departure
FROM daftar_penumpang
where Departure = 'Jakarta';

/* WHERE */
SELECT *
FROM daftar_penumpang
WHERE Umur = 20;

SELECT Nama_Depan, Umur
FROM daftar_penumpang
WHERE Riwayat_Penyakit = 'Tidak';

/* INSERT */
INSERT INTO daftar_penumpang (Nama_Depan, Nama_Belakang, Umur, Riwayat_Penyakit, Departure, Arrival)
VALUES ('Joko', 'Wi', 40, 'Tidak', 'Jakarta', 'Solo' );

INSERT INTO daftar_penumpang (Nama_Depan, Umur, Departure)
VALUES ('Cardinal', 19, 'Surabya');

INSERT INTO daftar_penumpang (Nama_Depan, Nama_Belakang, Umur, Riwayat_Penyakit, Departure, Arrival)
VALUES 
('Tom', 'Jery', 10, 'Angry', 'Norway', 'Jakarta' ),
('Greasy', 'Olsen', 28, 'Tidak', 'Sydney', 'Bali' ),
('Finn', 'Egan', 30, 'Tidak', 'Jakarta', 'UK' );

/* DELETE */
SELECT * FROM daftar_penumpang
WHERE Riwayat_Penyakit = 'Vertigo';

DELETE FROM daftar_penumpang
WHERE Umur = 10;

/* UPDATE */
UPDATE daftar_penumpang
SET Riwayat_Penyakit = 'Tidak ada'
WHERE Departure = 'Jakarta';

/* INDEX */
CREATE INDEX infor_riwayat_penyakit_idx
on daftar_penumpang (Riwayat_Penyakit)






