/* Componen-komponen penyusun constraints */
-   di antaranya NOT NULL, Unique, Primary Key, dan Index.

- Constraint adalah batasan yang ditempatkan dalam satu atau lebih kolom tabel
-  jenis constraint
    >   primary key, foreign key, unique, dan check

-- NOT NULL
-   memastikan bahwa setiap kolom tabel memiliki nilai dan tidak kosong
-   kosong dan nol (0) adalah berbeda
-   Kosong berarti tidak memiliki nilai, sedangkan nol (0) adalah sebuah nilai

CREATE TABLE info_bus (
    kode_bus CHAR(5) NOT NULL,
    nama_supir CHAR(50) NOT NULL,
    warna_bus CHAR(10),
    aktivitas_bus CHAR(100) NOT NULL
);

-- UNIQUE
-   memastikan setiap record pada tabel memiliki nilai yang unik atau berbeda
CREATE TABLE info_bus (
    kode_bus CHAR(5) UNIQUE,
    nama_supir CHAR(50) NOT NULL,
    warna_bus CHAR(10),
    aktivitas_bus CHAR(100) NOT NULL
);

-- PRIMARY KEY
-   Primary key digunakan untuk mengidentifikasi setiap baris pada suatu tabel yang bersifat NOT NULL (memastikan suatu kolom berisi nilai dan tidak kosong) dan unique
-   Data pada kolom primary key tidak dapat diulang

--  Contoh Kolom tunggal
CREATE TABLE info_bus (
    kode_bus CHAR(5) UNIQUE,
    nama_supir CHAR(50) NOT NULL,
    warna_bus CHAR(10),
    aktivitas_bus CHAR(100) NOT NULL
    PRIMARY KEY (kode_bus), 
);

-- Contoh pada kolom jamak (banyak)
CREATE TABLE info_bus (
    kode_bus CHAR(5) UNIQUE PRIMARY KEY,
    nama_supir CHAR(50) NOT NULL PRIMARY KEY,
    warna_bus CHAR(10),
    aktivitas_bus CHAR(100) NOT NULL
);

-- INDEX
-   sebuah mekanisme untuk menemukan item tertentu dalam sumber daya
CREATE INDEX infor_riwayat_penyakit_idx
on daftar_penumpang (Riwayat_Penyakit)


