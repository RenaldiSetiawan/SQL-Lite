/* Data Manipulation Language */
-   Data Manipulation Language (DML) merupakan sub-perintah pada SQL yang dimanfaatkan dalam manipulasi basis data

--  SELECT
CREATE TABLE "daftar_penumpang" (
	"Nama_Depan"	Char,
	"Nama_Belakang"	CHAR,
	"Umur"	INTEGER,
	"Riwayat_Penyakit"	CHAR,
	"Departure" CHAR,
	"Arrival" CHAR
);

SELECT * FROM daftar_penumpang;

SELECT *    -- tanda * meminta untuk memilih semua colum
FROM daftar_penumpang   -- FROM dilanjutkan nama tabel yang dibuat
WHERE Departure = 'Surabaya';   -- Where melihat sesuatu yg spesifik
                                -- Departure, kolom yang dilihat secara spesifik
                                -- 'Surabaya' niali yang dilihat pada kolom Departure


-- SELECT Untuk Data Spesifik
SELECT Nama_Depan, Umur, Departure -- Menganti * dengan kolom yang spesifik
FROM daftar_penumpang
where Departure = 'Jakarta';

-- WHERE
-   Untuk menulis pernyataan WHERE yang valid, pastikan setiap tipe data yang anda sertakn benar
-   memerlukan tanda petik tunggal (‘    ‘) sesudah sama dengan (=)
-   tIPpe data yang termasuk dalam NUMERIC, yaitu DEC atau DECIMAL, Anda tidak perlu menambahkan tanda petik sesudah tanda sama dengan (=)

SELECT *
FROM daftar_penumpang
WHERE Umur = 20;

SELECT Nama_Depan, Umur
FROM daftar_penumpang
WHERE Riwayat_Penyakit = 'Tidak';

-- INSERT
-   INSERT untuk memasukkan nilai record baru dalam sebuah tabel pada basis data

- INSERT INTO satu baris
INSERT INTO daftar_penumpang (Nama_Depan, Nama_Belakang, Umur, Riwayat_Penyakit, Departure, Arrival)
VALUES ('Om', 'Owi', 40, 'Tidak', 'Jakarta', 'Solo' );

- INSERT Data Only in Specified Columns
INSERT INTO daftar_penumpang (Nama_Depan, Umur, Departure)
VALUES ('Cardinal', 19, 'Surabya');

- INSERT Multiple Rows
INSERT INTO daftar_penumpang (Nama_Depan, Nama_Belakang, Umur, Riwayat_Penyakit, Departure, Arrival)
VALUES 
('Tom', 'Jery', 10, 'Angry', 'Norway', 'Jakarta' ),
('Greasy', 'Olsen', 28, 'Tidak', 'Sydney', 'Bali' ),
('Finn', 'Egan', 30, 'Tidak', 'Jakarta', 'UK' );

-- DELETE
-   DELETE adalah pernyataan untuk menghapus nilai yang tidak diperlukan lagi
-   Ketentuan Menggunakan DELETE
    1.  Tidak dapat menggunakan pernyataan DELETE untuk menghapus baris atau kolom pada sebuah tabel
    2.  dapat menggunakan DELETE untuk menghapus satu atau beberapa baris, bergantung pada pernyataan WHERE yang mengeliminasi data
    3.  WHERE digunakan untuk memilih data yang akan dihapus

-   Hati-hati dengan menggunakan DELETE!
    1.  Pilih catatan yang akan Anda hapus menggunakan SELECT
        SELECT * FROM daftar_penumpang
        WHERE Umur = 10;
    2.  gunakan DELETE untuk data yang lama dengan pernyataan WHERE yang sama
        DELETE FROM daftar_penumpang
        WHERE Umur = 10;

-- UPDATE
-   berfungsi memperbarui kolom ke nilai yang baru, seperti namanya
-   Syarat Menggunakan UPDATE
    1.  menggunakan UPDATE untuk mengubah nilai satu kolom atau tabel kolom
        UPDATE your_table
        SET first_column = 'newvalue',
        second_column = 'another_value';
    2.  menggunakan UPDATE untuk memperbarui satu baris atau beberapa baris, tergantung pada pernyataan WHERE

UPDATE daftar_penumpang
SET Riwayat_Penyakit = 'Tidak ada'
WHERE Departure = 'Jakarta';