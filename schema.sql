-- CREATE DATABASE TubesBasisData;

SELECT
    CONSTRAINT_NAME,
    COLUMN_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'TubesBasisData' AND
    TABLE_NAME = 'DokumenTugas' AND
    REFERENCED_TABLE_NAME IS NOT NULL;

-- Use database
USE TubesBasisData;

-- Create tables
-- 1. Akun
CREATE TABLE Akun (
    Username        VARCHAR(255) NOT NULL PRIMARY KEY,
    Email           VARCHAR(255) NOT NULL,
    Password        VARCHAR(255) NOT NULL,
    NamaLengkap     VARCHAR(255) NOT NULL,
    Tipe            VARCHAR(255) NOT NULL
);

-- 2. Universitas
CREATE TABLE Universitas (
    IDUniversitas       INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NamaUniversitas     VARCHAR(255) NOT NULL,
    AlamatNamaJalan     VARCHAR(255) NOT NULL,
    AlamatKota          VARCHAR(255) NOT NULL,
    AlamatProvinsi      VARCHAR(255) NOT NULL,
    AlamatKodePos       VARCHAR(255) NOT NULL,
    Akreditasi          VARCHAR(255) NOT NULL
);

-- -- 3. AdminUniversitas
CREATE TABLE AdminUniversitas (
    Username        VARCHAR(255) NOT NULL PRIMARY KEY,
    IDUniversitas   INT NOT NULL,

    FOREIGN KEY (Username) REFERENCES Akun(Username),
    FOREIGN KEY (IDUniversitas) REFERENCES Universitas(IDUniversitas)
);

-- 4. EmailUniversitas
CREATE TABLE EmailUniversitas (
    IDUniversitas       INT AUTO_INCREMENT NOT NULL,
    Email               VARCHAR(255) NOT NULL,

    PRIMARY KEY (IDUniversitas, Email),
    FOREIGN KEY (IDUniversitas) REFERENCES Universitas(IDUniversitas)
);

-- 5. NomorTeleponUniversitas
CREATE TABLE NomorTeleponUniversitas (
    IDUniversitas       INT AUTO_INCREMENT NOT NULL,
    NomorTelepon        VARCHAR(255) NOT NULL,

    PRIMARY KEY (IDUniversitas, NomorTelepon),
    FOREIGN KEY (IDUniversitas) REFERENCES Universitas(IDUniversitas)
);

-- 6. Perusahaan
CREATE TABLE Perusahaan (
    IDPerusahaan        INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NamaPerusahaan      VARCHAR(255) NOT NULL,
    AlamatNamaJalan     VARCHAR(255) NOT NULL,
    AlamatKota          VARCHAR(255) NOT NULL,
    AlamatProvinsi      VARCHAR(255) NOT NULL,
    AlamatKodePos       VARCHAR(255) NOT NULL
);

-- 7. EmailPerusahaan
CREATE TABLE EmailPerusahaan (
    IDPerusahaan        INT AUTO_INCREMENT NOT NULL,
    Email               VARCHAR(255) NOT NULL,

    PRIMARY KEY (IDPerusahaan, Email),
    FOREIGN KEY (IDPerusahaan) REFERENCES Perusahaan(IDPerusahaan)
);

-- 8. NomorTeleponPerusahaan
CREATE TABLE NomorTeleponPerusahaan (
    IDPerusahaan        INT AUTO_INCREMENT NOT NULL,
    NomorTelepon        VARCHAR(255) NOT NULL,

    PRIMARY KEY (IDPerusahaan, NomorTelepon),
    FOREIGN KEY (IDPerusahaan) REFERENCES Perusahaan(IDPerusahaan)
);

-- 9. Beasiswa
CREATE TABLE Beasiswa (
    IDBeasiswa                  INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    IDPerusahaan                INT NOT NULL,
    NamaBeasiswa                VARCHAR(255) NOT NULL,
    DeskripsiBeasiswa           TEXT NOT NULL,
    SyaratBeasiswa              TEXT NOT NULL,
    TanggalDeadlineBeasiswa     DATE NOT NULL,
    URLWebsiteBeasiswa          VARCHAR(255),
    URLBannerBeasiswa           VARCHAR(255),

    FOREIGN KEY (IDPerusahaan) REFERENCES Perusahaan(IDPerusahaan)
);

-- 10. AdminBeasiswa
CREATE TABLE AdminBeasiswa (
    Username        VARCHAR(255) NOT NULL PRIMARY KEY,
    IDPerusahaan    INT NOT NULL,

    FOREIGN KEY (Username) REFERENCES Akun(Username),
    FOREIGN KEY (IDPerusahaan) REFERENCES Perusahaan(IDPerusahaan)
);

-- 11. AdminMengelola
CREATE TABLE AdminMengelola (
    Username        VARCHAR(255) NOT NULL,
    IDBeasiswa      INT NOT NULL,

    PRIMARY KEY (Username, IDBeasiswa),
    FOREIGN KEY (Username) REFERENCES AdminBeasiswa(Username),
    FOREIGN KEY (IDBeasiswa) REFERENCES Beasiswa(IDBeasiswa)
);

-- 12. PakarBahasa
CREATE TABLE PakarBahasa (
    Username        VARCHAR(255) NOT NULL PRIMARY KEY,
    SpesialisPakar  VARCHAR(255) NOT NULL,

    FOREIGN KEY (Username) REFERENCES Akun(Username)
);

-- 13. Mahasiswa
CREATE TABLE Mahasiswa (
    Username        VARCHAR(255) NOT NULL PRIMARY KEY,
    IDUniversitas   INT,
    TahunMasuk      INT NOT NULL,
    Jurusan         VARCHAR(255) NOT NULL,

    FOREIGN KEY (Username) REFERENCES Akun(Username),
    FOREIGN KEY (IDUniversitas) REFERENCES Universitas(IDUniversitas)
);

-- 14. Mendaftar
CREATE TABLE Mendaftar (
    IDPendaftaran       INT AUTO_INCREMENT NOT NULL,
    Username            VARCHAR(255) NOT NULL,
    IDBeasiswa          INT NOT NULL,
    StatusPendaftaran   VARCHAR(255) NOT NULL,
    TanggalPendaftaran  DATE NOT NULL,

    PRIMARY KEY (IDPendaftaran, Username, IDBeasiswa),
    FOREIGN KEY (Username) REFERENCES Mahasiswa(Username),
    FOREIGN KEY (IDBeasiswa) REFERENCES Beasiswa(IDBeasiswa)
);

-- 15. Dokumen
CREATE TABLE Dokumen (
    IDDokumen           INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    UsernameMahasiswa   VARCHAR(255) NOT NULL,
    NamaDokumen         VARCHAR(255) NOT NULL,
    TipeDokumen         VARCHAR(255) NOT NULL,
    URLDokumen          VARCHAR(255) NOT NULL,
    UsernamePakar       VARCHAR(255),
    KomentarReviuPakar  TEXT,

    FOREIGN KEY (UsernameMahasiswa) REFERENCES Mahasiswa(Username),
    FOREIGN KEY (UsernamePakar) REFERENCES PakarBahasa(Username)
);

-- 16. Tugas
CREATE TABLE Tugas (
    IDTugas                 INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    IDBeasiswa              INT NOT NULL,
    NamaTugas               VARCHAR(255) NOT NULL,
    DeskripsiTugas          TEXT NOT NULL,
    TanggalDeadlineTugas    DATE NOT NULL,

    FOREIGN KEY (IDBeasiswa) REFERENCES Beasiswa(IDBeasiswa)
);

-- 17. DokumenTugas
CREATE TABLE DokumenTugas (
    IDDokumen          INT NOT NULL,
    IDTugas            INT NOT NULL,
    IDPendaftaran      INT NOT NULL,

    PRIMARY KEY (IDDokumen, IDTugas),
    FOREIGN KEY (IDDokumen) REFERENCES Dokumen(IDDokumen),
    FOREIGN KEY (IDTugas) REFERENCES Tugas(IDTugas),
    FOREIGN KEY (IDPendaftaran) REFERENCES Mendaftar(IDPendaftaran)
);