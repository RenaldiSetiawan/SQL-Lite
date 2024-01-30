/* Data Definition Language */
    - CREATE TABLE
    - DROP TABLE
    - VIEW

--  CREATE TABLE
CREATE TABLE "tabel_penumpang" (
	"No"	INTEGER,
	"Nama"	CHAR,
	"Jenis Kelamin"	INTEGER,
	"Usia"	INTEGER,
	"Riwayat Penyakit"	CHAR
);

-- Tipe Data yang didukung TABLE
    -   NULL adalah sebuah tipe data spesial yang menunjukkan sebuah variabel belum memiliki nilai 
    -   NOT NULL yang memiliki fungsi untuk memastikan bahwa nilai pada kolom tersebut tidak boleh kosong

-- DROP TABLE
    -   DROP TABLE menghapus tabel dari basis data

-- DROP TABLE
DROP TABLE tabel_penumpang;

-- VIEW
    -   VIEW atau tabel virtual adalah tabel yang hanya ada saat Anda menggunakan view dalam query

-- Mengapa Menggunakan VIEW
    1.  dapat menyimpan perubahan pada struktur basis data agar tidak mengganggu aplikasi yang bergantung pada tabel
    2.  membuat pekerjaan Anda lebih mudah dengan menyederhanakan query kompleks menjadi perintah sederhana
    3.  dapat menyembunyikan informasi yang tidak diperlukan oleh pengguna

CREATE VIEW [Penumpang] AS
SELECT No, Nama
FROM tabel_penumpang
where Riwayat = 'Asma';